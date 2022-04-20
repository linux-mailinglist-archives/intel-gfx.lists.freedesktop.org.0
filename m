Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FF7508C2B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 17:32:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D262010F1A3;
	Wed, 20 Apr 2022 15:32:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F208F10F19C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 15:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650468767;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CQlwgXJfUzewi1EhVtdj/fLDhGTbGHwsq3wxgv97dA0=;
 b=Ba4U/9XiEZEe99DKlUFV2jeorEt3Hq9IFOPkks44uZ2KBhLVIYho1uxnNB51aX1//74ouO
 f+55pVc5m/zoW/gxjsxjhnvUr6n7hJaxbtfWHym8z2POPPlj6Cz5qw4TLqhEQFB7arKQBS
 sw1toGik8Q9wUtCiAGzjARlEOqqFJqY=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-626-tjGPCIIMOY2NPW05W-Rcjw-1; Wed, 20 Apr 2022 11:32:46 -0400
X-MC-Unique: tjGPCIIMOY2NPW05W-Rcjw-1
Received: by mail-ed1-f71.google.com with SMTP id
 b24-20020a50e798000000b0041631767675so1400170edn.23
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 08:32:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=CQlwgXJfUzewi1EhVtdj/fLDhGTbGHwsq3wxgv97dA0=;
 b=uZxrVt6u9gqli49MN4pZU34NJr/Zh+X3BY5RLQSMz9NxYoVvIwJlweYHEfW3fPocJb
 L+DP+0amuRePu4VXR35/NE8rnonUfmvcPwN14jIG0u9Y34eWru7LGm3Nghw2rBz6PKYE
 cy0TE+6iQXZqd1MoeSTQ9hgQLXWHSfAiI6/l3OMMCo9PJDl6pj1Iwl4h3OhDIPSHARhg
 qJGMR96GXI+4qX1jXvgpMFf8MnduyYAb0Rl3TvQSGxXcxqoiTPllJ8nmf0px57/BmkQc
 2Dkvbd7nDajruldJDtHgLQdhRc4eMpi6tj1xHDnrnXX8UVNBI5e+ZgK7g9SbH7ht9+ba
 WIrQ==
X-Gm-Message-State: AOAM531FN3+RLIGyH8QdgCLeZEW8zHgP7ulsR0eZUyGzpo9fGcllychQ
 7wI1mVj7NRyjEf3/3J5hC1uvR0+7rrR3JbNO2ML0l0F29TOomfrntIg+4wFEHQCgXT59pcLb0RI
 Ay7fsmRz5G1X/ISAmlJVg4B67K2UU
X-Received: by 2002:a17:906:7948:b0:6da:64ed:178e with SMTP id
 l8-20020a170906794800b006da64ed178emr19631671ejo.523.1650468765230; 
 Wed, 20 Apr 2022 08:32:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzvp+iiK8EDVFdaisWrzr2Zjdw72CuneDHf/89fVH8uV6W2CaE07aX4w7VFaXN7YKREnbsRmw==
X-Received: by 2002:a17:906:7948:b0:6da:64ed:178e with SMTP id
 l8-20020a170906794800b006da64ed178emr19631659ejo.523.1650468765029; 
 Wed, 20 Apr 2022 08:32:45 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 s5-20020a508dc5000000b004241a4abbdfsm1311831edh.45.2022.04.20.08.32.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 Apr 2022 08:32:44 -0700 (PDT)
Message-ID: <60452154-8aab-b15d-1dff-29d3fa732f22@redhat.com>
Date: Wed, 20 Apr 2022 17:32:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20220418150936.5499-1-hdegoede@redhat.com>
 <YmASniwe39jj1miR@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <YmASniwe39jj1miR@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix DISP_POS_Y and DISP_HEIGHT
 defines
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

On 4/20/22 16:03, Ville Syrjälä wrote:
> On Mon, Apr 18, 2022 at 05:09:36PM +0200, Hans de Goede wrote:
>> Commit 428cb15d5b00 ("drm/i915: Clean up pre-skl primary plane registers")
>> introduced DISP_POS_Y and DISP_HEIGHT defines but accidentally set these
>> their masks to REG_GENMASK(31, 0) instead of REG_GENMASK(31, 16).
>>
>> This breaks the primary display pane on at least pineview machines, fix
>> the mask to fix the primary display pane only showing black.
>>
>> Tested on an Acer One AO532h with an Intel N450 SoC.
>>
>> Fixes: 428cb15d5b00 ("drm/i915: Clean up pre-skl primary plane registers")
>> Cc: José Roberto de Souza <jose.souza@intel.com>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>> Note this fixes a regression in 5.18-rc# and I'm not entirely sure what
>> the procedure is here. Once I get a Reviewed-by or Acked-by and I push
>> this to drm-intel-next (where it also is necessary), should I then also
>> push it to drm-intel-fixes or will the current drm-intel-fixes
>> maintainer pick it up?
>> ---
>>  drivers/gpu/drm/i915/i915_reg.h | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index 51f46fe45c72..5f1f38684d65 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -4352,12 +4352,12 @@
>>  #define _DSPAADDR				0x70184
>>  #define _DSPASTRIDE				0x70188
>>  #define _DSPAPOS				0x7018C /* reserved */
>> -#define   DISP_POS_Y_MASK		REG_GENMASK(31, 0)
>> +#define   DISP_POS_Y_MASK		REG_GENMASK(31, 16)
> 
> Doh. I guess I only tested it on plane A where the plane gets its size
> from PIPESRC instead. And looks like the failure mode is such that
> the likes of kms_plane/pixel-formats still gets consistent looking CRCs
> even with the misconfigured plane size :/
> 
> Thanks for the fix. Pushed to drm-intel-next.

Thank you pushing this out, will you (or someone else from Intel)
also take care of getting this on its way to 5.18-rc# ?

Regards,

Hans



> 
>>  #define   DISP_POS_Y(y)			REG_FIELD_PREP(DISP_POS_Y_MASK, (y))
>>  #define   DISP_POS_X_MASK		REG_GENMASK(15, 0)
>>  #define   DISP_POS_X(x)			REG_FIELD_PREP(DISP_POS_X_MASK, (x))
>>  #define _DSPASIZE				0x70190
>> -#define   DISP_HEIGHT_MASK		REG_GENMASK(31, 0)
>> +#define   DISP_HEIGHT_MASK		REG_GENMASK(31, 16)
>>  #define   DISP_HEIGHT(h)		REG_FIELD_PREP(DISP_HEIGHT_MASK, (h))
>>  #define   DISP_WIDTH_MASK		REG_GENMASK(15, 0)
>>  #define   DISP_WIDTH(w)			REG_FIELD_PREP(DISP_WIDTH_MASK, (w))
>> -- 
>> 2.35.1
> 

