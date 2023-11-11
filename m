Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2BA7E9D93
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 14:45:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EACE10E379;
	Mon, 13 Nov 2023 13:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.gentoo.org (smtp.gentoo.org
 [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E391110E099;
 Sat, 11 Nov 2023 07:55:15 +0000 (UTC)
References: <20231107215538.1891359-1-sam@gentoo.org>
 <87jzqsy3sp.fsf@intel.com>
User-agent: mu4e 1.10.8; emacs 30.0.50
From: Sam James <sam@gentoo.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Date: Sat, 11 Nov 2023 07:54:26 +0000
Organization: Gentoo
In-reply-to: <87jzqsy3sp.fsf@intel.com>
Message-ID: <87zfzk7mhv.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 13 Nov 2023 13:45:43 +0000
Subject: Re: [Intel-gfx] [PATCH] drm: i915: Adapt to -Walloc-size
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: intel-gfx@lists.freedesktop.org, Sam James <sam@gentoo.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Jani Nikula <jani.nikula@linux.intel.com> writes:

> On Tue, 07 Nov 2023, Sam James <sam@gentoo.org> wrote:
>> GCC 14 introduces a new -Walloc-size included in -Wextra which errors out
>> like:
>> ```
>> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c: In function =E2=80=98eb_=
copy_relocations=E2=80=99:
>> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1681:24: error: allocatio=
n of insufficient size =E2=80=981=E2=80=99 for type =E2=80=98struct drm_i91=
5_gem_relocation_entry=E2=80=99 with size =E2=80=9832=E2=80=99 [-Werror=3Da=
lloc-size]
>>  1681 |                 relocs =3D kvmalloc_array(size, 1, GFP_KERNEL);
>>       |                        ^
>>
>> ```
>>
>> So, just swap the number of members and size arguments to match the prot=
otype, as
>> we're initialising 1 element of size `size`. GCC then sees we're not
>> doing anything wrong.
>>
>> Signed-off-by: Sam James <sam@gentoo.org>
>
> The short answer,
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>
> but please read on.
>
>> ---
>>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gp=
u/drm/i915/gem/i915_gem_execbuffer.c
>> index 683fd8d3151c..45b9d9e34b8b 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> @@ -1678,7 +1678,7 @@ static int eb_copy_relocations(const struct i915_e=
xecbuffer *eb)
>>  		urelocs =3D u64_to_user_ptr(eb->exec[i].relocs_ptr);
>>  		size =3D nreloc * sizeof(*relocs);
>>=20=20
>> -		relocs =3D kvmalloc_array(size, 1, GFP_KERNEL);
>> +		relocs =3D kvmalloc_array(1, size, GFP_KERNEL);
>
> Based on the patch context, we should really be calling:
>
> 	kvmalloc_array(nreloc, sizeof(*relocs), GFP_KERNEL);
>
> and we'd get mul overflow checks too.
>
> However, the code below also needs size, unless it's refactored to
> operate on multiples of sizeof(*relocs) and it all gets a bit annoying.
>
> Maybe there's a better way, but for the short term the patch at hand is
> no worse than what we currently have, and it'll silence the warning, so
> let's go with this.

Thanks. I have been trying to port to kvmalloc_array where I can if it's
obvious/trivial, but I admit I didn't want to take it on when it'd
require any surrounding refactoring unless someone insisted.

>
>
>>  		if (!relocs) {
>>  			err =3D -ENOMEM;
>>  			goto err;

best,
sam
