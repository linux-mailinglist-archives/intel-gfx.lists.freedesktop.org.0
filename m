Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZbSGA0HLRGog1AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 10:09:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9B56EAF4B
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 10:09:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=eJQGLOs5;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FE9810E2FF;
	Wed,  1 Jul 2026 08:09:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFDDC10E2FF;
 Wed,  1 Jul 2026 08:09:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1782893364; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=Cq5Z5pVOzanHef+40NoTyNT7q6AVitj63I+EMJ4EkHUSf7f2Yjy+c0iuKCLC0y26ACMFaXTpzGUnlp4ucIdx4ho5aL4MKeoVowqiMJn4gPWQB9+kRFK0uMNw5k2WDQLlkXHMFzBhBsDMcjCTIpAsUONEUzdYd6QwCg3Z2dFd0x4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1782893364;
 h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=0jUdYf3Jpsqpg7AGrjGxXVn5l4AHY7WYmNW7iTVyHF4=; 
 b=fSACafJUjZZfxlQT7zJ+Bsm0ZeSh9g3oP2cDRgJKyLGiBIOobuz9A9bjCLy5aKkJCuibIa+sDjhWrtf49bzAcNeMZynIIiY54W8fZeoTSiAat1BdG2CcUxTmRyQ0WzRbg5qmPPLKBHVLTfkYUz/maoVRWxGYQ+3MefUQQSkRB8k=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=robert.mader@collabora.com;
 dmarc=pass header.from=<robert.mader@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1782893364; 
 s=zohomail; d=collabora.com; i=robert.mader@collabora.com;
 h=Content-Type:Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:References:Cc:Cc:From:From:In-Reply-To:Message-Id:Reply-To;
 bh=0jUdYf3Jpsqpg7AGrjGxXVn5l4AHY7WYmNW7iTVyHF4=;
 b=eJQGLOs5RGlA+b0IUVho9pCfmphpjp10DYPC55nIsXPoivRwDIioQ4Y0e58nRIZ3
 7jnpxhXH4fs1JJfGKzksSbO/kLsoIqQM50hsXhymq1Wp55w+QargE0Zv36kqx51W7pP
 gvJm/jSCfiSfqgXs9D2k+tn5dDn7t2IGZbE2Cwsk=
Received: by mx.zohomail.com with SMTPS id 1782893362327461.10843289133913;
 Wed, 1 Jul 2026 01:09:22 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------MrgBLpczX1AiTYcmsbtV2Cqf"
Message-ID: <267deaf4-55ec-492d-8646-e16a9b4bfb65@collabora.com>
Date: Wed, 1 Jul 2026 10:09:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/4] drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE
 behind driver feature
To: Melissa Wen <mwen@igalia.com>, dri-devel@lists.freedesktop.org
References: <20260630084229.529682-1-robert.mader@collabora.com>
 <20260630084229.529682-2-robert.mader@collabora.com>
 <0570d22d-bf3c-4c17-b50e-58f522f25ffb@igalia.com>
 <9eb18964-fcca-4fce-9fb9-f36d762ac23e@collabora.com>
Content-Language: en-US, de-DE
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, Harry Wentland <harry.wentland@amd.com>,
 Daniel Stone <daniels@collabora.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Uma Shankar <uma.shankar@intel.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>, Simon Ser <contact@emersion.fr>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Leandro Ribeiro <leandro.ribeiro@collabora.com>
From: Robert Mader <robert.mader@collabora.com>
In-Reply-To: <9eb18964-fcca-4fce-9fb9-f36d762ac23e@collabora.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,amd.com,collabora.com,intel.com,bootlin.com,emersion.fr];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.mader@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:mid,collabora.com:from_mime,lists.freedesktop.org:url,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D9B56EAF4B

This is a multi-part message in MIME format.
--------------MrgBLpczX1AiTYcmsbtV2Cqf
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 01.07.26 09:35, Robert Mader wrote:
> On 30.06.26 18:57, Melissa Wen wrote:
>>
>>
>> On 30/06/2026 10:42, Robert Mader wrote:
>>> The client cap is currently advertised unconditionally, even for 
>>> drivers that do
>>> not support plane color pipelines. If clients supporting the later, 
>>> like Wayland
>>> compositors and drm_info, enable the client cap on sich drivers they 
>>> will be
>>> left without both color pipeline and the legacy properties 
>>> COLOR_ENCODING and
>>> COLOR_RANGE, effectively breaking YUV->RGB conversion support.
>>>
>>> Add a new driver feature and guard the client cap behind it, allowing
>>> plane color pipeline and legacy YUV->RGB support to co-exist.
>>
>> Ouch, that's indeed a problem. Nice catch!
>>
>> I'm not sure if this is the right way to go because plane color 
>> pipeline can be supported per plane and per hw family.
>> My suggestion would be to only deprecate COLOR_ENCODING and 
>> COLOR_RANGE in drm_mode_object_get_properties() if a plane 
>> COLOR_PIPELINE property is attached.
>> WDYT?
>
> Hi Melissa!
>
> I don't think we need or should use the legacy properties for drivers 
> and clients that supports the new API. Once Harrys YUV conversion 
> colorop series(1) lands, every plane on every hardware currently 
> supporting COLOR_ENCODING and COLOR_RANGE could express that with the 
> colorop API as well - even if not supporting any other operations. It 
> would look roughly like this:
>
> └───"COLOR_PIPELINE" (atomic): enum {Bypass, YUV Pipeline 123} = Bypass
>      ├───Bypass
>      └───YUV Pipeline 123
>          └───Color Operation 123
>              └───Properties
>                  ├───"TYPE" (immutable): enum {1D Curve, 1D LUT, 3x4 Matrix, Multiplier, 3D LUT, Fixed Matrix} = Fixed Matrix
>                  ├───"BYPASS" (atomic): range [0, 1] = 1
>                  ├───"NEXT" (atomic, immutable): object colorop = 465
>                  └───"FIXED_MATRIX_TYPE" (atomic): enum {YCbCr 601 Full to RGB, YCbCr 601 Limited to RGB, YCbCr 709 Full to RGB, YCbCr 709 Limited to RGB, YCbCr 2020 NC Full to RGB, YCbCr 2020 NC Limited to RGB} = YCbCr 601 Full to RGB
>
> Doing so will be nicer for compositors/clients going forward as they'd 
> only need to support a single API if they don't care about legacy 
> drivers (and we can adapt all in-tree drivers).
>
> Do you agree?
>
> Best regards
>
> Robert
>
> 1: https://lists.freedesktop.org/archives/dri-devel/2026-June/575655.html
>
P.S.: sorry for the noise, just resending with all to/cc headers to make 
sure it doesn't get lost - and wanted to add that I'm currently working 
on the Weston implementation for the YUV conversion colorop to get it 
over the line.

-- 
Robert Mader
Consultant Software Developer

Collabora Ltd.
Platinum Building, St John's Innovation Park, Cambridge CB4 0DS, UK
Registered in England & Wales, no. 5513718

--------------MrgBLpczX1AiTYcmsbtV2Cqf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 01.07.26 09:35, Robert Mader wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:9eb18964-fcca-4fce-9fb9-f36d762ac23e@collabora.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div class="moz-cite-prefix">On 30.06.26 18:57, Melissa Wen wrote:<br>
      </div>
      <blockquote type="cite"
        cite="mid:0570d22d-bf3c-4c17-b50e-58f522f25ffb@igalia.com"> <br>
        <br>
        On 30/06/2026 10:42, Robert Mader wrote: <br>
        <blockquote type="cite">The client cap is currently advertised
          unconditionally, even for drivers that do <br>
          not support plane color pipelines. If clients supporting the
          later, like Wayland <br>
          compositors and drm_info, enable the client cap on sich
          drivers they will be <br>
          left without both color pipeline and the legacy properties
          COLOR_ENCODING and <br>
          COLOR_RANGE, effectively breaking YUV-&gt;RGB conversion
          support. <br>
          <br>
          Add a new driver feature and guard the client cap behind it,
          allowing <br>
          plane color pipeline and legacy YUV-&gt;RGB support to
          co-exist. <br>
        </blockquote>
        <br>
        Ouch, that's indeed a problem. Nice catch! <br>
        <br>
        I'm not sure if this is the right way to go because plane color
        pipeline can be supported per plane and per hw family. <br>
        My suggestion would be to only deprecate COLOR_ENCODING and
        COLOR_RANGE in drm_mode_object_get_properties() if a plane
        COLOR_PIPELINE property is attached. <br>
        WDYT? <br>
      </blockquote>
      <p>Hi Melissa!</p>
      <p>I don't think we need or should use the legacy properties for
        drivers and clients that supports the new API. Once Harrys YUV
        conversion colorop series(1) lands, every plane on every
        hardware currently supporting COLOR_ENCODING and COLOR_RANGE
        could express that with the colorop API as well - even if not
        supporting any other operations. It would look roughly like
        this:</p>
      <pre>└───"COLOR_PIPELINE" (atomic): enum {Bypass, YUV Pipeline 123} = Bypass
    ├───Bypass
    └───YUV Pipeline 123
        └───Color Operation 123
            └───Properties
                ├───"TYPE" (immutable): enum {1D Curve, 1D LUT, 3x4 Matrix, Multiplier, 3D LUT, Fixed Matrix} = Fixed Matrix
                ├───"BYPASS" (atomic): range [0, 1] = 1
                ├───"NEXT" (atomic, immutable): object colorop = 465
                └───"FIXED_MATRIX_TYPE" (atomic): enum {YCbCr 601 Full to RGB, YCbCr 601 Limited to RGB, YCbCr 709 Full to RGB, YCbCr 709 Limited to RGB, YCbCr 2020 NC Full to RGB, YCbCr 2020 NC Limited to RGB} = YCbCr 601 Full to RGB</pre>
      <p>Doing so will be nicer for compositors/clients going forward as
        they'd only need to support a single API if they don't care
        about legacy drivers (and we can adapt all in-tree drivers).</p>
      <p>Do you agree?</p>
      <p>Best regards</p>
      <p>Robert</p>
      <p>1: <a class="moz-txt-link-freetext"
href="https://lists.freedesktop.org/archives/dri-devel/2026-June/575655.html"
          moz-do-not-send="true">https://lists.freedesktop.org/archives/dri-devel/2026-June/575655.html</a></p>
    </blockquote>
    <p>P.S.: sorry for the noise, just resending with all to/cc headers
      to make sure it doesn't get lost - and wanted to add that I'm
      currently working on the Weston implementation for the YUV
      conversion colorop to get it over the line.</p>
    <pre class="moz-signature" cols="72">-- 
Robert Mader
Consultant Software Developer 

Collabora Ltd.
Platinum Building, St John's Innovation Park, Cambridge CB4 0DS, UK
Registered in England &amp; Wales, no. 5513718</pre>
  </body>
</html>

--------------MrgBLpczX1AiTYcmsbtV2Cqf--
