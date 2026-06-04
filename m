Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T6CaBqEaIWrM/AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 08:26:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C3563D3EB
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 08:26:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=canonical.com header.s=20251003 header.b=iTKojcA6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=canonical.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 941A21126A2;
	Thu,  4 Jun 2026 06:26:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B76CD1126A2
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2026 06:26:36 +0000 (UTC)
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com
 [209.85.215.199])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3D9653F82A
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2026 06:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20251003; t=1780554395;
 bh=vsMHKIFpUIhrPk0DECdef2DbD+vUYw7WHkW/xtElA+0=;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
 Content-Type:In-Reply-To;
 b=iTKojcA6GmXO1gCYaRNq6AlODaOYIG+W65tPUjRleD7iQHYBAWydYgfUtUlvzJjhV
 SWu4rGDK9uiP0xi6a28I5nZw1+xGi1AR/si7J1GojeiFyimbwEFCEHfW+QHmfS+FAi
 6VC7ModqALO56EZIiJz8vGip0WMFo3Ydnba/7fyLpo0rA92kkzjrr5zV+9c9f7fCx7
 gl6xKCLMYIAohW/cBJ3e2j3eOWXufJybPkvdwdIeesO1dw8gqJrvi6C3qhnBlJ3++r
 ZvyQxIoBuSmLLido1V2Eue384RSrdM4TKh1rUq12qlBNmBtUlfJuM1mdjBiKPYkCq1
 yreFgV6TJFw8wMIw5cwGs5atyG8q0vEUiFv7rZVrsBmDq453Hgy/QJNp/d6q57Pkr6
 RJ4zHQ1Ae/I2+tGt5E5oTPCWUJ66zOc3JLE6Gx9e0n6a/bmwbAeXyudDDAH0jnwmiX
 wiBaFfDlisBR//pLvl0wQ/4B1UMH6i4HLiM7XHv9EUbqGL/043n0y83yINZK4sdS6V
 i9MaAJTHFIxf7V3mjg+iCNb1wo70JYaHzLDvPHwU3EHke4Y8bv5tgaGpMjQDElrOvp
 WQ7T1Ocn7MaQg3ysYoZtoDk18yfxu3JNrKLhJAoY0Cb+TdEVp/ZmeVwlmUprBtuWas
 GXC1H7VltAoSyKclGjGWjUVI=
Received: by mail-pg1-f199.google.com with SMTP id
 41be03b00d2f7-c85868c32b6so442446a12.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Jun 2026 23:26:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780554394; x=1781159194;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=vsMHKIFpUIhrPk0DECdef2DbD+vUYw7WHkW/xtElA+0=;
 b=lPPU4rPrcsXwe3VGzr6Lp5CNbwI0nPJtf2gSENHT6OUzHvBcYKMQcveewJPOpZtxLm
 LBhxAtq+kit+5D357gq7Gz7ml1HgdswlixfH3SwGNmxTnhtXDc7Mk8EFBEFW7jsEn7o5
 h9mITWrK4ev/XplslGFFnBjQXRH08Zf2ANg5u+G1sIJyuJADRWjxYryuP3n1E2gAV+np
 dS9RxNn2r/89zFN65xVzYQ8m4Q3YzhdEmoaqCTI2G7xopRLBs5J4SC0GSnfD1TPcVRHr
 ldD+2esHY2fNIhhOibgYKeR1pR0U8MrKFQ53uhustEaAWj1yUXHWHVkKNeIk7yhMxqpW
 ZPKA==
X-Forwarded-Encrypted: i=1;
 AFNElJ/NDDyTpvP7gVeeD474LI0F4bXWXefpuNJ7UjLuZYuNL1eBAAaPYMLWWzBU+HtH854Qnbg5ml+RhYI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwAAo39J0l/kxRuv7y1nb3Dg8JROL/DkVSjGgAds2uCDmtB/gZh
 K5gJstuQePXwLDYySuz5zCQOsC+FE1jVOtAGgWrfZlV/bRP9kqHc1MWlzG9EAvX/r2USSGH/Q0i
 iaIznFcAelrheHTJq4zjCGrC0oxHIp++ZKUNybC5i9HtiemIpJcoJSf3uZnh65oLurDXB4ej5fd
 bhG2hA1f2vOQ==
X-Gm-Gg: Acq92OE5cBIuNCIRwNHWgwhEA2gpCvl/96MX1Dx+FEEjmN20qRroPpUqVxRTRdaEH8S
 Hu53ZCHkNbFiqc0WWqc3FsJOPOUb/j5mEFIL8X0EMPRIpSZRE8223+Ca4ZLqPjdZ5sLeyo3z6fM
 b3mWsqreIbfZqO0ZJkInmxseCotDZalBQ4jmKfkRHmNcRV7NELfzwPM8egjOeOMeNmRj0u/tPHK
 4fToWejkV/tuVLx8HaQ1Qd1qFQxv5tMCJ5HkmLRY9dfZ8AW1uKzkfA0BKGhv59OVDILzZPozlfj
 w+cxfDUffZqgKblMQSSmgBEsNyCz/oMg+WDuqiFlziJAwK3+DN7HmvMQwJGbrijZ9eYmwdTlMrk
 uTvY5/HvMW7e5foJNL4lH6Pp31Q0hr9V7GNxvljJDLxcQ0B15PjlZwW/EDdinMUaYziPDmhDCBs
 G5zpKyYONdw7SX
X-Received: by 2002:a05:6a00:1488:b0:842:6a97:52fb with SMTP id
 d2e1a72fcca58-84284dc0488mr6562710b3a.18.1780554393640; 
 Wed, 03 Jun 2026 23:26:33 -0700 (PDT)
X-Received: by 2002:a05:6a00:1488:b0:842:6a97:52fb with SMTP id
 d2e1a72fcca58-84284dc0488mr6562689b3a.18.1780554393193; 
 Wed, 03 Jun 2026 23:26:33 -0700 (PDT)
Received: from acelan-Precision-5480 (211-75-139-220.hinet-ip.hinet.net.
 [211.75.139.220]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-8428706fa9asm4262986b3a.45.2026.06.03.23.26.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2026 23:26:32 -0700 (PDT)
Date: Thu, 4 Jun 2026 14:26:28 +0800
From: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Mario Limonciello <superm1@kernel.org>, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2] drm/dp: Add byte-by-byte fallback for broken USB-C
 adapters
Message-ID: <aiEZY48ZemmrS_E9@acelan-Precision-5480>
Mail-Followup-To: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Mario Limonciello <superm1@kernel.org>, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, 
 ville.syrjala@linux.intel.com
References: <20251204024647.1462866-1-acelan.kao@canonical.com>
 <685f4a41-b90c-4f8f-b4be-531eae1905ce@kernel.org>
 <61e9fb8c40b40fc6a1588b29bc2283fdaa313e1d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <61e9fb8c40b40fc6a1588b29bc2283fdaa313e1d@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[canonical.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[canonical.com:s=20251003];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:superm1@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[acelan.kao@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[acelan.kao@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[canonical.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,canonical.com:dkim,canonical.com:from_mime,canonical.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 52C3563D3EB

On Fri, May 29, 2026 at 04:13:41PM +0300, Jani Nikula wrote:
> On Fri, 09 Jan 2026, Mario Limonciello <superm1@kernel.org> wrote:
> > On 12/3/25 8:46 PM, Chia-Lin Kao (AceLan) wrote:
> >> Some USB-C hubs and adapters have buggy firmware where multi-byte AUX
> >> reads consistently timeout, while single-byte reads from the same address
> >> work correctly.
> >>
> >> Known affected devices that exhibit this issue:
> >> - Lenovo USB-C to VGA adapter (VIA VL817 chipset)
> >>    idVendor=17ef, idProduct=7217
> >> - Dell DA310 USB-C mobile adapter hub
> >>    idVendor=413c, idProduct=c010
> >>
> >> Analysis of the failure pattern shows:
> >> - Single-byte probes to 0xf0000 (LTTPR) succeed
> >> - Single-byte probes to 0x00102 (TRAINING_AUX_RD_INTERVAL) succeed
> >> - Multi-byte reads from 0x00000 (DPCD capabilities) timeout with -ETIMEDOUT
> >> - Retrying does not help - the failure is consistent across all attempts
> >>
> >> The issue appears to be a firmware bug in the AUX transaction handling
> >> that specifically affects multi-byte reads.
> >>
> >> Add a fallback mechanism in drm_dp_dpcd_read_data() that attempts
> >> byte-by-byte reading when the normal multi-byte read fails. This
> >> workaround only activates for adapters that fail the standard read path,
> >> ensuring no impact on correctly functioning hardware.
> >>
> >> Tested with:
> >> - Lenovo USB-C to VGA adapter (VIA VL817) - now works with fallback
> >> - Dell DA310 USB-C hub - now works with fallback
> >> - Dell/Analogix Slimport adapter - continues to work with normal path
> >>
> >> Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
> >
> > Reviewed-by: Mario Limonciello (AMD) <superm1@kernel.org>
> >
> > As this fixes reads for some existing hardware on the market and is just
> > in fallback path I feel this is low risk.  I've applied this to
> > drm-misc-fixes.
>
> I've stumbled on this when I was looking at drm_dp_dpcd_read_data(). I
> never received the original patch, for whatever reason, even though Lore
> says I was Cc'd.
This should be my problem that some receivers rejects my email,
because I'm using another email account to send the email.

I still have issues to send the email via company email account, and
hope this email won't be rejected.
>
> > a8f49a0043011 (HEAD -> drm-misc-fixes) drm/dp: Add byte-by-byte fallback
> > for broken USB-C adapters
> >
> >> ---
> >> v2. 1. Move the workaround from intel_dp_read_dprx_caps() to
> >>         drm_dp_dpcd_read_data(), so that it applies to all DPCD reads across
> >>         all DRM drivers benefit from this fix, not just i915.
> >>      2. Move the definition of drm_dp_dpcd_readb() before
> >>         drm_dp_dpcd_read_data()
> >> ---
> >>   include/drm/display/drm_dp_helper.h | 57 +++++++++++++++++++----------
> >>   1 file changed, 37 insertions(+), 20 deletions(-)
> >>
> >> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
> >> index df2f24b950e4..14d2859f0bda 100644
> >> --- a/include/drm/display/drm_dp_helper.h
> >> +++ b/include/drm/display/drm_dp_helper.h
> >> @@ -551,6 +551,22 @@ ssize_t drm_dp_dpcd_read(struct drm_dp_aux *aux, unsigned int offset,
> >>   ssize_t drm_dp_dpcd_write(struct drm_dp_aux *aux, unsigned int offset,
> >>   			  void *buffer, size_t size);
> >>
> >> +/**
> >> + * drm_dp_dpcd_readb() - read a single byte from the DPCD
> >> + * @aux: DisplayPort AUX channel
> >> + * @offset: address of the register to read
> >> + * @valuep: location where the value of the register will be stored
> >> + *
> >> + * Returns the number of bytes transferred (1) on success, or a negative
> >> + * error code on failure. In most of the cases you should be using
> >> + * drm_dp_dpcd_read_byte() instead.
> >> + */
> >> +static inline ssize_t drm_dp_dpcd_readb(struct drm_dp_aux *aux,
> >> +					unsigned int offset, u8 *valuep)
> >> +{
> >> +	return drm_dp_dpcd_read(aux, offset, valuep, 1);
> >> +}
> >> +
> >>   /**
> >>    * drm_dp_dpcd_read_data() - read a series of bytes from the DPCD
> >>    * @aux: DisplayPort AUX channel (SST or MST)
> >> @@ -570,12 +586,29 @@ static inline int drm_dp_dpcd_read_data(struct drm_dp_aux *aux,
> >>   					void *buffer, size_t size)
> >>   {
> >>   	int ret;
> >> +	size_t i;
> >> +	u8 *buf = buffer;
> >>
> >>   	ret = drm_dp_dpcd_read(aux, offset, buffer, size);
> >> -	if (ret < 0)
> >> -		return ret;
> >> -	if (ret < size)
> >> -		return -EPROTO;
> >> +	if (ret >= 0) {
> >> +		if (ret < size)
> >> +			return -EPROTO;
> >> +		return 0;
> >> +	}
> >> +
> >> +	/*
> >> +	 * Workaround for USB-C hubs/adapters with buggy firmware that fail
> >> +	 * multi-byte AUX reads but work with single-byte reads.
> >> +	 * Known affected devices:
> >> +	 * - Lenovo USB-C to VGA adapter (VIA VL817, idVendor=17ef, idProduct=7217)
> >> +	 * - Dell DA310 USB-C hub (idVendor=413c, idProduct=c010)
> >> +	 * Attempt byte-by-byte reading as a fallback.
> >> +	 */
> >> +	for (i = 0; i < size; i++) {
> >> +		ret = drm_dp_dpcd_readb(aux, offset + i, &buf[i]);
>
> drm_dp_dpcd_read_byte() should be preferred over drm_dp_dpcd_readb()...
>
> >> +		if (ret < 0)
>
> ...because drm_dp_dpcd_readb() might return 0 on failures. You need to
> use drm_dp_dpcd_readb() == 1 to check for success, which is why
> drm_dp_dpcd_read_byte() and drm_dp_dpcd_read_data() were introduced in
> the first place.
>
> Moreover, this ugly workaround only impacts drm_dp_dpcd_read_data()
> callers, but there are lots and lots of direct drm_dp_dpcd_read() calls
> all over the place, which go unfixed.
>
> It should be emphasized that DP AUX changes that affect absolutely all
> drivers should go through more scrutiny, and require more acks.
>
> This needs follow-up fixes.
I'll do some study and submit the follow-up fixes later.

>
>
> BR,
> Jani.
>
>
> >> +			return ret;
> >> +	}
> >>
> >>   	return 0;
> >>   }
> >> @@ -609,22 +642,6 @@ static inline int drm_dp_dpcd_write_data(struct drm_dp_aux *aux,
> >>   	return 0;
> >>   }
> >>
> >> -/**
> >> - * drm_dp_dpcd_readb() - read a single byte from the DPCD
> >> - * @aux: DisplayPort AUX channel
> >> - * @offset: address of the register to read
> >> - * @valuep: location where the value of the register will be stored
> >> - *
> >> - * Returns the number of bytes transferred (1) on success, or a negative
> >> - * error code on failure. In most of the cases you should be using
> >> - * drm_dp_dpcd_read_byte() instead.
> >> - */
> >> -static inline ssize_t drm_dp_dpcd_readb(struct drm_dp_aux *aux,
> >> -					unsigned int offset, u8 *valuep)
> >> -{
> >> -	return drm_dp_dpcd_read(aux, offset, valuep, 1);
> >> -}
> >> -
> >>   /**
> >>    * drm_dp_dpcd_writeb() - write a single byte to the DPCD
> >>    * @aux: DisplayPort AUX channel
> >
>
> --
> Jani Nikula, Intel
