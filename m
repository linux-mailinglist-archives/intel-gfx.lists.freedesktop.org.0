Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EABB6ED4DB
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 20:54:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A96F10E1D2;
	Mon, 24 Apr 2023 18:54:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9761810E1D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 18:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1682362472;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kOV+lZTqexAGHEqKC1iNEqD2fThSsnKZUteY9/CUYUc=;
 b=Nl2tWTyMc9CAxK/PG4ZXyGgRiERbtKD6GDLxcY8TZ30iZSXd5lP00FEpg7Rp5wAtX4Beya
 0t5Z4jdeB1xv9rrfXMN8ZVbElxsz19N+UC4BOV2HjGSfvX+ACEWo024KcxhzWyk5WheId3
 tHfMq+MkrEa8xzsJWCe0GO9FjBqg1oU=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-426-5LAgvT-pOuOJSsspnV8-1w-1; Mon, 24 Apr 2023 14:54:30 -0400
X-MC-Unique: 5LAgvT-pOuOJSsspnV8-1w-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-9576a365957so348682666b.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 11:54:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682362469; x=1684954469;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kOV+lZTqexAGHEqKC1iNEqD2fThSsnKZUteY9/CUYUc=;
 b=hBkKIhcyMPDexAPUdXbkYOfyc7VNTX8rcVAgufZ+lGYyTb/DLvXB7TyCAGtLnM9owI
 8KGUX/V+kGAuKahkA+kbgDlUuFegNela4fzCtk9bdbZ6Hkf07WXFXX37m+uzFrKEPzdD
 Bs7rm99CIAgmYpjMzolva29+DD6dz++p/XjU9uRxkkTAJV4f0TYlf3YIjOWHXVa3woG8
 oOUARqnLkn8gwjBC0fVN0mxDiPpcihZYWkW+GKx9F5JCXqhkjILqCGSudamEhIPW9QXu
 qEfrieKS2uyS0RcZbp8UZF1hytBQMu0dI1+9tBts4kamQ4quwXbKG77ZOkDyW+KVcN3Y
 e0Bg==
X-Gm-Message-State: AAQBX9cscTmLe2Phd0yGFmqlSNuuzyGNgWtXe3o0O4Vg2w5sa7TCYbR+
 LNbcfr5tNKjkPKtylMbF3AztgiTO6W9PpxxTKjVTSY5fzR2c913heMZc1O+FcZTY/D4kDpPb8YA
 Vx6QVJ8RznjHNpCOXUJ8V2p1fAye+
X-Received: by 2002:a17:906:4914:b0:94a:6b4b:6b52 with SMTP id
 b20-20020a170906491400b0094a6b4b6b52mr8365533ejq.76.1682362469598; 
 Mon, 24 Apr 2023 11:54:29 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZjMbVTWqzZP7O3Xmm1a16AT3Szc3hoKHsrIcuWqqKUOtJY9A0cWOc+B8MVhhugqULJIRoWoQ==
X-Received: by 2002:a17:906:4914:b0:94a:6b4b:6b52 with SMTP id
 b20-20020a170906491400b0094a6b4b6b52mr8365522ejq.76.1682362469292; 
 Mon, 24 Apr 2023 11:54:29 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 w17-20020a17090649d100b009537ef8eb17sm5774903ejv.217.2023.04.24.11.54.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Apr 2023 11:54:28 -0700 (PDT)
Message-ID: <c31b63cf-235a-b8de-438a-bc4adbb9f282@redhat.com>
Date: Mon, 24 Apr 2023 20:54:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230422184359.56503-1-hdegoede@redhat.com>
 <ZEbLwrS+CoH/dBBv@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <ZEbLwrS+CoH/dBBv@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Always use unconditional
 msleep() for the panel_on_delay
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

On 4/24/23 20:34, Ville Syrjälä wrote:
> On Sat, Apr 22, 2023 at 08:43:59PM +0200, Hans de Goede wrote:
>> The intel_dsi_msleep() helper skips sleeping if the MIPI-sequences have
>> a version of 3 or newer and the panel is in vid-mode.
>>
>> This is based on the big comment around line 730 which starts with
>> "Panel enable/disable sequences from the VBT spec.", where
>> the "v3 video mode seq" column does not have any wait t# entries.
>>
>> Commit 6fdb335f1c9c ("drm/i915/dsi: Use unconditional msleep for
>> the panel_on_delay when there is no reset-deassert MIPI-sequence")
>> switched to a direct msleep() instead of intel_dsi_msleep()
>> when there is no MIPI_SEQ_DEASSERT_RESET sequence, to fix
>> the panel on an Acer Aspire Switch 10 E SW3-016 not turning on.
>>
>> This was done under the assumption that when there is a v3
>> MIPI_SEQ_DEASSERT_RESET sequence it will take care of any
>> necessary delays.
>>
>> On the Nextbook Ares 8A (a Cherry Trail device like the Acer SW3-016)
>> there is a MIPI_SEQ_DEASSERT_RESET sequence, yet panel_on_delay
>> must still be honored otherwise the panel will not turn on.
>>
>> Switch to always using an unconditional msleep() for
>> the panel_on_delay instead of making this depend on
>> the presence of a MIPI_SEQ_DEASSERT_RESET sequence.
> 
> I just checked what Windows does, and at least for icl+ it
> always waits for the panel power delays regardless of what
> the VBT MIPI sequences are doing.
> 
> So I suspect we should just get rid of intel_dsi_msleep()
> entirely and do what the power sequencing delays tell us.
> Anything else is untested territory. If the VBT actually
> wanted us to skip the delays then it should really be
> setting them to zero.

So I checked and there are only 4 (before this patch) /
3 (after this patch) callers of intel_dsi_msleep().

So just getting rid of it entirely sounds good to me.

Shall I prepare a v2 patch which does this ?

Regards,

Hans





>> Fixes: 6fdb335f1c9c ("drm/i915/dsi: Use unconditional msleep for the panel_on_delay when there is no reset-deassert MIPI-sequence")
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>  drivers/gpu/drm/i915/display/vlv_dsi.c | 18 +++---------------
>>  1 file changed, 3 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> index a6d6d8b33f3f..1b87f8f5f7fd 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -788,7 +788,6 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
>>  {
>>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>> -	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>  	enum pipe pipe = crtc->pipe;
>>  	enum port port;
>> @@ -836,21 +835,10 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
>>  	if (!IS_GEMINILAKE(dev_priv))
>>  		intel_dsi_prepare(encoder, pipe_config);
>>  
>> +	/* Give the panel time to power-on and then deassert its reset */
>>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_ON);
>> -
>> -	/*
>> -	 * Give the panel time to power-on and then deassert its reset.
>> -	 * Depending on the VBT MIPI sequences version the deassert-seq
>> -	 * may contain the necessary delay, intel_dsi_msleep() will skip
>> -	 * the delay in that case. If there is no deassert-seq, then an
>> -	 * unconditional msleep is used to give the panel time to power-on.
>> -	 */
>> -	if (connector->panel.vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET]) {
>> -		intel_dsi_msleep(intel_dsi, intel_dsi->panel_on_delay);
>> -		intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
>> -	} else {
>> -		msleep(intel_dsi->panel_on_delay);
>> -	}
>> +	msleep(intel_dsi->panel_on_delay);
>> +	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
>>  
>>  	if (IS_GEMINILAKE(dev_priv)) {
>>  		glk_cold_boot = glk_dsi_enable_io(encoder);
>> -- 
>> 2.39.2
> 

