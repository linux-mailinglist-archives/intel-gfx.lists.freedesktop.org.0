Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31595847B67
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 22:15:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4547C10E81A;
	Fri,  2 Feb 2024 21:15:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="tlMD5sTh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C94710E81A
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 21:15:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id AF47962888;
 Fri,  2 Feb 2024 21:15:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32363C433F1;
 Fri,  2 Feb 2024 21:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1706908531;
 bh=qd+lGlIwYuTwQOXV9mYnAkVVxQ2f0jJ2mB8ltUbKspw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tlMD5sThB3Mxm4lfOEYXlXMvLDwKMk1oIhpogPRXRvE/4ICI3joEcXWSN0oLaKAIo
 QS3w//0t9a5dEawuV66Swhz8b4F+C1U4pMxrnJjRCaK4tiIsV6qhwEg6Ce97DlDvKa
 iIXFENf5cjqaPH1nSxxaek2gA5MGzbVDHboj+fx9jjqvhSn8b3uafKThr8h0QTAayv
 4eVp+A5AYw5jW8q0LQNxTBy3uv7yotjsSpPOhETLFWMEIQIBRRkEocTkVY59z1gPpc
 rrt+aOtcUnrK9mSwuNLx56aPjdNEIB9KvNsuk9JlfwYS99NDnESintK8zHT6unB8eD
 wO09QQBXvI+Qw==
Date: Fri, 2 Feb 2024 16:15:29 -0500
From: Sasha Levin <sashal@kernel.org>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Greg KH <greg@kroah.com>, stable-commits@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: Re: Re: Patch "drm: Fix color LUT rounding" has been added to
 the 6.7-stable tree
Message-ID: <Zb1bcXZp-3YY06AL@sashalap>
References: <20240201170320.69864-1-sashal@kernel.org>
 <ZbvdXx7-GSUljUh1@intel.com> <2024020119-user-aviation-b3c5@gregkh>
 <ZbvkbJFs-hQ1wi4o@intel.com>
 <2024020120-unclog-junction-8a5f@gregkh>
 <Zb0d7xIFMhZpTXsW@intel.com>
 <4rfubhgx5ro6uyril7labgxoovuj26funttdts6bbcrbdfjxlj@mrwxtts657g2>
 <Zb1E0YF0KwOTO8Vi@sashalap>
 <jywz4vli3vxiq62enzeu4gfiv3adhndn5unpew4nxgitwo7zup@esnk7etqceg5>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <jywz4vli3vxiq62enzeu4gfiv3adhndn5unpew4nxgitwo7zup@esnk7etqceg5>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 02, 2024 at 02:14:40PM -0600, Lucas De Marchi wrote:
>On Fri, Feb 02, 2024 at 02:38:57PM -0500, Sasha Levin wrote:
>>On Fri, Feb 02, 2024 at 11:35:33AM -0600, Lucas De Marchi wrote:
>>>On Fri, Feb 02, 2024 at 06:53:03PM +0200, Ville Syrjälä wrote:
>>>>On Thu, Feb 01, 2024 at 11:17:28AM -0800, Greg KH wrote:
>>>>>On Thu, Feb 01, 2024 at 08:35:24PM +0200, Ville Syrjälä wrote:
>>>>>>On Thu, Feb 01, 2024 at 10:16:48AM -0800, Greg KH wrote:
>>>>>>>On Thu, Feb 01, 2024 at 08:05:19PM +0200, Ville Syrjälä wrote:
>>>>>>>> On Thu, Feb 01, 2024 at 12:03:20PM -0500, Sasha Levin wrote:
>>>>>>>> > This is a note to let you know that I've just added the patch titled
>>>>>>>> >
>>>>>>>> >     drm: Fix color LUT rounding
>>>>>>>> >
>>>>>>>> > to the 6.7-stable tree which can be found at:
>>>>>>>> >     http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary
>>>>>>>> >
>>>>>>>> > The filename of the patch is:
>>>>>>>> >      drm-fix-color-lut-rounding.patch
>>>>>>>> > and it can be found in the queue-6.7 subdirectory.
>>>>>>>> >
>>>>>>>> > If you, or anyone else, feels it should not be added to the stable tree,
>>>>>>>> > please let <stable@vger.kernel.org> know about it.
>>>>>>>>
>>>>>>>> I guess I wasn't clear enough in the other mail...
>>>>>>>>
>>>>>>>> NAK for all of backports of this patch.
>>>>>>>
>>>>>>>Ok, but why?  It seems that you are fixing a real issue here, right?  If
>>>>>>>not, the changelog is not clear with that at all...
>>>>>>>
>>>>>>>I'll go drop it now, thanks.
>>>>>>
>>>>>>Because backporting it would require other backports that depend on
>>>>>>the rounding behaviour.
>>>>>>
>>>>>>Can I somehow fully opt out of these automagic backports?
>>>>>>If I want my stuff backported I'll ask for it.
>>>>>
>>>>>You can, just let me know what exact files should be ignored, or you can
>>>>>send a patch against this file:
>>>>>	https://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git/tree/ignore_list
>>>>
>>>>I think we should add at least i915 and xe there. cc: maintainers
>>>
>>>It does feel a little wild to decide a patch needs to be backported
>>>based on the commit title starting with "Fix", or whatever way was used
>>>here. We always relied on patches being backported based on a) having a
>>>Fixes: trailer and  b) the commit pointed out in that trailer
>>>being present in that stable version. Or the others options shown
>>>in Documentation/process/stable-kernel-rules.rst
>>>
>>>Looking at the commit in question, c6fbb6bca10838485b820e8a26c23996f77ce580
>>>there's no such a trailer. Did I miss something from
>>>Documentation/process/stable-kernel-rules.rst?
>>
>>Where did you see anything about the Fixes: trailer in the document
>>you've pointed to?
>
>End of "Option 1":
>
>   Note, such tagging is unnecessary if the stable team can derive the
>   appropriate versions from Fixes: tags.

Let me quote the entire section containing the sentence you've pasted
above:

> * For patches that may have kernel version prerequisites specify them using
>   the following format in the sign-off area:
>
>   .. code-block:: none
>
>     Cc: <stable@vger.kernel.org> # 3.3.x
>
>   The tag has the meaning of:
>
>   .. code-block:: none
>
>     git cherry-pick <this commit>
>
>   For each "-stable" tree starting with the specified version.
>
>   Note, such tagging is unnecessary if the stable team can derive the
>   appropriate versions from Fixes: tags.

Looking at the above, does the phrase "such tagging" refer to stable@
tags in general, or to tagging of prerequisite patches?

-- 
Thanks,
Sasha
