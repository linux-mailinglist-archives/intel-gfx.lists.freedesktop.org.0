Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F3C55E538
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 16:10:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0CAB10F2E7;
	Tue, 28 Jun 2022 14:10:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0889310F2E7
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jun 2022 14:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656425448; x=1687961448;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=QwzFnqLc34kakSQOBkYocfFt1z8S14TK/azKvyuyVU0=;
 b=Zqx7sqZ7MTnlN3GcfB2bid+WU+9t96yF4h8rxI5VMNaA4H/jRUMQCB4G
 jdHpWm1PNTPoZGqn3uWgkiwXSOKiU4HjBNaNiPlMgDuDpQJ+epI+ziR4C
 QIaNuS+215s76wIjZnRJ01iXHvQ/piN26ord+0w9phNlSr24FjvAsVYk7
 kRk4cRso/F3labuXhLijejJ9kQ0jXg5eVimrBe9Ei+N0d1ZClcPE5xCJ6
 Vkf9Ryz0E5oaiW1o3gWeXNyfh5yYN1yQWa0pruP9x39/DhaBwXHqGyDMm
 Dm90BDaYonmn85Rlnu6JitdxfCTnAxqZ0S6KQO/L3d+wOWTw5Nj4+BHm7 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="279296858"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="279296858"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 07:10:47 -0700
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="646928169"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.49.11])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 07:10:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YrTGZZneKukWSkM4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1655712106.git.jani.nikula@intel.com>
 <473e9c4d9c5a21d742b72dad27cca87402796abb.1655712106.git.jani.nikula@intel.com>
 <YrTGZZneKukWSkM4@intel.com>
Date: Tue, 28 Jun 2022 17:10:43 +0300
Message-ID: <87edz8ri8s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/16] drm/i915: use GRAPHICS_VER() instead
 of accessing match_info directly
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 23 Jun 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Jun 20, 2022 at 11:37:40AM +0300, Jani Nikula wrote:
>> We've just set up device info in i915_driver_create() so we can use
>> GRAPHICS_VER() intead of looking at match_info directly.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_driver.c | 4 +---
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i=
915_driver.c
>> index d26dcca7e654..aeec3dfe3ebf 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -829,8 +829,6 @@ i915_driver_create(struct pci_dev *pdev, const struc=
t pci_device_id *ent)
>>   */
>>  int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id =
*ent)
>>  {
>> -	const struct intel_device_info *match_info =3D
>> -		(struct intel_device_info *)ent->driver_data;
>>  	struct drm_i915_private *i915;
>>  	int ret;
>>=20=20
>> @@ -839,7 +837,7 @@ int i915_driver_probe(struct pci_dev *pdev, const st=
ruct pci_device_id *ent)
>>  		return PTR_ERR(i915);
>>=20=20
>>  	/* Disable nuclear pageflip by default on pre-ILK */
>> -	if (!i915->params.nuclear_pageflip && match_info->graphics.ver < 5)
>> +	if (!i915->params.nuclear_pageflip && GRAPHICS_VER(i915) < 5)
>
> Should also be switched to DISPLAY_VER(), but that could be done as a
> separate patch too.
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, I've sent this separately with s/GRAPHICS_VER/DISPLAY_VER/.

BR,
Jani.


>
>>  		i915->drm.driver_features &=3D ~DRIVER_ATOMIC;
>>=20=20
>>  	ret =3D pci_enable_device(pdev);
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
