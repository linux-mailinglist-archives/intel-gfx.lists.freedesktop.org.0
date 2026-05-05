Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CD4VBLeC/GmOQwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 14:16:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3004E816B
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 14:16:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0851810E058;
	Thu,  7 May 2026 12:16:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NGfnXAcx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABB6810E0AD
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2026 05:37:38 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id
 4fb4d7f45d1cf-678adefbd26so9046739a12.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 May 2026 22:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777959457; x=1778564257; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uk2zQJuUcVQqnV7jIPl8Or1ZVzIynOuYpI8KTaDKwo4=;
 b=NGfnXAcx6b7X5i+hJF6+xm/eHr57KQPnlrLap/361rDrIRSZg6dMLjgt02cXoTmj4Q
 /5KGJTyM75qwIO4f4y9bcuUmpW9CeaFrjSTeUSozmyxaGWTCj8KPC4Ab/MPZg4O+3oD2
 iMZQ8h33CwYJDIafqqtGEwwThOn3ON+N/Cp/IgsXC2ps1ru4hEKc43TEtnITrOQJ4pbZ
 cCU49xtqnEoQ+KcBh2C8kEYblB6G3Zz8prcXFHI7n0N7KrF12CMalv0Ihk+KZxzmgDA4
 pn5elTS59B2bC5tI1ZEP7WFXaP0PDe96SmYJ/vvVyvx81p7p6l6ejFswi1xBNkgdMdou
 gHSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777959457; x=1778564257;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=uk2zQJuUcVQqnV7jIPl8Or1ZVzIynOuYpI8KTaDKwo4=;
 b=h7XmBasX979X8fTmFR4WQx3WLD8jDMx/JEwTk+/pzG5ycKTkzVdk0pDrMHPUHA9B9z
 li4S96PLqFc32EExN+6hwnbNzlmaJW4y88+nhhYmXjOmQ8fjNgfX/gV5N20CZXI7SLRt
 cIlmSarRLMC32CBdv0A/IymJrzE+LQJTB+6gGXGgNEHffhT2nI+7XAWdHbnTSYBThdrq
 mafuBWHuQNvcikm7x49wQCoVNqmJzQZnlQitQcVAYhgy/d7Zc4Ya7PXMFXnvCsi4O7ix
 Nu1eM0A3wAEOLPnEBaiMbvPdP4OX6ZKEWXL40S23W1i3eDjunk3vq4P7/P4Ge9JS5IsU
 kUeg==
X-Forwarded-Encrypted: i=1;
 AFNElJ/4muKJNzHKwSWL9xaMkhecrYdbvDfYzxK1a0hF28MsNQ7R6YW3Nnb98lafMryoNpxibABTdvVqFsE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxxIKbFL/Q74Pgk2qIgPF3SCSg1MdEeiZKm9FA9eAgq9X8H96xi
 +0o1RmttWZZ3Kb2nv+vV345uszKsW07YKpnEy74iJSqVq/cMLqiXKW77
X-Gm-Gg: AeBDiesSQYkZ9ikmrhyPk7Ug4nTqkfjMsAdeEAm+OFhJLAmbAUk041ESmy6lgZE5ATt
 VEUoFRk2spCnlWzb+8q4zRanAzjUsSb4utbJQ2pIMBy2nFFrTFM5CGKqQJVjXeSbrP5TzxC88XU
 vMthovy7dKm0hnyhF31jIVo7IbiB2LOiwPZfUpN5kNPZwqFK/GSNnBl72niRZ5j7vmbD1Vppb/e
 r9xkc5tW2QonF05fk7d1WbcQ1mrZ35x+0zgyln0otuAD1rNsyPWzld+MmagaKyK6A1RND6C1ku9
 apF72H8iqZM9032uOGk3d4Vn30KMtTFN5oJVY5nYocdxqfaX5D0X5F/GXVkPXNfZzbf3+2k6TGQ
 EaaPpAJTGxdy14GecX4KmqtkQPy/9l7xkTCRObFC881ZXhfaw1PMAs3a5L8WMphfJYbGL2rCJGN
 XyAXAHfGL+cGnuPyl0ZMCJ71FY/37o33A5BzQ9Vhsj51UExfjsKKx97DTFxlya+dwvfYMBmV1tR
 TgwnXI=
X-Received: by 2002:a17:907:3e1d:b0:bc2:df19:b48e with SMTP id
 a640c23a62f3a-bc2df19b65fmr348544866b.34.1777959456885; 
 Mon, 04 May 2026 22:37:36 -0700 (PDT)
Received: from JTOLLET-M-FKW7.cisco.com
 ([2603:5004:20a0:100c:46ca:8ac1:59:13e3])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-bc2e55d98f9sm122694466b.8.2026.05.04.22.37.34
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Mon, 04 May 2026 22:37:36 -0700 (PDT)
From: Jerome Tollet <jerome.tollet@gmail.com>
To: ankit.k.nautiyal@intel.com
Cc: arun.r.murthy@intel.com, intel-gfx@lists.freedesktop.org,
 Jerome Tollet <jerome.tollet@gmail.com>
Subject: Re: [RESEND] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
Date: Tue,  5 May 2026 07:37:33 +0200
Message-ID: <20260505053733.74136-1-jerome.tollet@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260113143107.1446909-1-ankit.k.nautiyal@intel.com>
References: <20260113143107.1446909-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 07 May 2026 12:16:52 +0000
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
X-Rspamd-Queue-Id: 8B3004E816B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	DATE_IN_PAST(1.00)[54];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ankit.k.nautiyal@intel.com,m:arun.r.murthy@intel.com,m:jerome.tollet@gmail.com,m:jerometollet@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lists.freedesktop.org,gmail.com];
	FROM_NEQ_ENVFROM(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,patchwork.freedesktop.org:url]
X-Rspamd-Action: no action

Hi Ankit, Arun,

I submitted patch v3 on April 20th but CI is blocked because my address
jerome.tollet@gmail.com is not on the Intel GFX CI allowlist.

I contacted i915-ci-infra@lists.freedesktop.org twice (April 24th and
April 30th) but received no response.

Could you help get this unblocked?

Series: https://patchwork.freedesktop.org/series/160028/

Thanks,
Jerome
