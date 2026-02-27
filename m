Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJQ+N/OeoWl8ugQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 14:41:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B9A1B7C96
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 14:41:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 653E910EB69;
	Fri, 27 Feb 2026 13:41:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OPHc/xzu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A31B10EB3C
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Feb 2026 13:17:10 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id
 5b1f17b1804b1-4806ce0f97bso16585315e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Feb 2026 05:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1772198228; x=1772803028; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1JlP/Hf+1uXINfgamN2q52Ag3USsQOeX8HbMEe6aI5w=;
 b=OPHc/xzuJhRFojeYZe3HCcBMMdx04uklX3IjF9U9zI6WjlqW9tsFs24aTSP0Ii+jT6
 eY2qd9WRVVyU1V5pTx7ks5Qer8Lz/H+KDBCSs2WyBc/ctSMhkWU3JKMR8iPU6biYj3D/
 P3+MIi4Nl+DjUq8JiEmMpYmHV97SIJAtYOSRDC7jGlLMc62bTAXMNzy0f5POxYPe1aBc
 YOyXpf5ic8Gz9sx+0mzzQ1hv/CftWOFoX5sZDE6scKyEcFunjWXDaY35NKx1t/3FkNpd
 xxGyE4qdaEtl/mxA/KpBtjeXFf2Qs7XYbUSXE9VWgAte5p8gE12PUNr/FhCD0yzyNwnQ
 ItqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772198228; x=1772803028;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=1JlP/Hf+1uXINfgamN2q52Ag3USsQOeX8HbMEe6aI5w=;
 b=raFWhXctA5KkHqU4g0Bl41Ic90kqwzf7cOXb/gY/hf566LlNoRoRHMKnjrFR9v27SQ
 LbDFYwqU62kPPRZgnK/dHo5elgO9Dl9NhVLexq96TVAAgg4BOV4jZj98lRw7QlQ2R1h6
 hiRnFt1gTEck2gCzLqNxIdfKsHLfbjXH5V852WEheLmV+oW8hYou162c82Cu/LwF0QHq
 5V3VNYN2+xFvV3g7mMD9J9v8aVz/Db2b5BrRp65sMBGtVxKTv0uvZm5HLfrBLc0IWjsN
 Ip7stxBO3+Fasew/cviMD7y8n4M0gq4aeItgcwoF8XR1GHbdxQ5o1MkLsrjE5JH1O8e5
 TiFg==
X-Gm-Message-State: AOJu0YzWHzmHQD4g/rx0wclo+vmwFeHCIfgDzdaYh/HvISzrE2WXEvsD
 d3MbmSn1UvZyNt39RJgSjD+lZaHkUvZmlI2yylNgvqyfv8cJ3kZZDvVCsfHDlPUMzHjaosGW
X-Gm-Gg: ATEYQzwq9rE6fRhuLR88amcAV75B33aWUJwzolHSWptXR6iQm1bnwe3vr8DRBqy+mxa
 1rsnsgHI/CbJdPICkdFwQRu0KDAfIa3Ci7YFC8YwBPLeK7fKomxsko3i7nNITEcRkcQe/o4UYVB
 W5bsV/sW2HhujmjpON8lSzBuwmFW8jw6f6z0dhnxugpDP+l6Aeb/Nyup+Luu9fMkwjAMnhbVvWU
 7aT7ZORDShMYU4d9NpUpQhHBYrjPJqmvuP4hZzPwo3r2EzGoKm+XNpuJ2bZE23sO8AQMJevsyIt
 9DcQ0C8/WcZ4Er2VeEwWNazK4YLCBOqOdyBL+w2PRFLvOOjeG+Rrz78+B9VZVGWWXjx8DFxDBrL
 pQnzMhT5ajvVSDoFSdUfbnMOFmTQbEWgkjyRNKouooYYbp8RIWTL3phzGw3yvsh9sshmCJSIoPS
 97xNmKVJJ8UA2ZZN88FLouoNHQzZFr69VpuxeiTpXL9pviBJUdBdUiQrjS1Vgh+9Qv3ekQ0hKeT
 A==
X-Received: by 2002:a05:600c:3106:b0:483:6a8d:b2f9 with SMTP id
 5b1f17b1804b1-483c9ba6165mr46831075e9.5.1772198228112; 
 Fri, 27 Feb 2026 05:17:08 -0800 (PST)
Received: from JTOLLET-M-FKW7 (90.64.3.89.rev.sfr.net. [89.3.64.90])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-483bfb77abdsm59354005e9.2.2026.02.27.05.17.07
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Fri, 27 Feb 2026 05:17:07 -0800 (PST)
From: Jerome Tollet <jerome.tollet@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 ville.syrjala@linux.intel.com, Jerome Tollet <jerome.tollet@gmail.com>
Subject: Re: [RESEND] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
Date: Fri, 27 Feb 2026 14:16:38 +0100
Message-ID: <20260227131638.33167-1-jerome.tollet@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <73e0de50-b7e3-4315-ab81-0a3ecebc2363@intel.com>
References: <20260113143107.1446909-1-ankit.k.nautiyal@intel.com>
 <Z1MfXyv5_ORAVj3z@intel.com> <73e0de50-b7e3-4315-ab81-0a3ecebc2363@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 27 Feb 2026 13:41:00 +0000
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,intel.com,linux.intel.com,gmail.com];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 98B9A1B7C96
X-Rspamd-Action: no action

Hi Ankit, Ville,

Gentle ping on this patch series. As confirmed in my previous testing
(Feb 21), the SCDC polling patch works perfectly on kernel 6.19.2 with
my Alder Lake-N (N100) + Cisco Desk Pro (CS-DESKPRO-2) setup.

The isolated testing showed that the SCDC polling approach alone
resolves the 4K@60Hz HDMI issue, which aligns with both the HDMI 2.0
spec requirements and Windows driver behavior.

Is there anything else needed from my side to help move this forward?

Thanks,
Jerome
