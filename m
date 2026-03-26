Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IO3oCTwfxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:57:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90717334CDD
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:57:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C04610E9D3;
	Thu, 26 Mar 2026 11:57:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99D5210E8E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 05:41:16 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id
 a640c23a62f3a-b9910707d82so64229966b.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 22:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774503675; x=1775108475; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MeNlsGRjk0j75B4U63/NOgjAHeRo7Cmol6vB5z1mUKQ=;
 b=fuqEqisZVGUfM+oKuvsYejm5hUlqmED3KpTVzlBuGhhvGPDrS7NV3Nha50iR3gXai6
 SkW4r84nqQ/VKiVT+YiUNqtawjLi3NTJVqhnvH8SFcvtwKNh3e//170tM2/rJNw8n1u2
 6pQRe2e0xXrEzhmL5GaUrnSq5h579Xd5+1BH8hRSkL4s+kUkHjWCRbkQu9s1kI4sYZqu
 BrufrW7/my+kJGwpVPfHiW/GcpqJQoHDcqTZlE87sTM/Uz8VRGlf5puPFQuWIDVR/Qhv
 O//yqZAahueU2RnMSn1cX/+ET4px4rJ7kqGcskuxXeUyKQ74JCamGGudsaWgRS/XzQKk
 z4fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774503675; x=1775108475;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=MeNlsGRjk0j75B4U63/NOgjAHeRo7Cmol6vB5z1mUKQ=;
 b=NI72wjCJUrxzCbbH69Vc3N7/dgrQU3LMrN28XBDHCVYUCsNcn3cSP3Z64a6vRp03Tw
 CN75Buyjl65dk7GXMslQe+Ukwljv/03AMBedoGqX4/pz8yF/rflAOlZNdZAD8Xx3ETVM
 AgEpD0dQx39K/3+wRK4rsXfd1fAjTd4rJoGMY2l+mmPOkWbyaNDk/gFIBSfq6W0MgtS7
 Pbc8Bcj97BTzs0kMSK2oVISlc3Uk6SeVge+bbB7/bCGurk3eyr08jsdbj9fB6m8tK9dZ
 Zzz5C7ihp2yqE9Y7/cnLR6UCXX65JzUa+Ct/5UIdm8DpvldfhQkhTVRnKbm4d/mvjK6H
 rGgQ==
X-Gm-Message-State: AOJu0Ywe2NoI+kw/36xillYY/p6XG8tEFF3xdbjXy/N9IvJfN9y9LBQu
 UqL3x0Y7UDx3VZwN2gUFR/H78DrIaxHGIZKZgeCLcUm32v4eAw3QBb3oIkqGsjaEcStKQKGX
X-Gm-Gg: ATEYQzwo7K1bxeCcDVJRd0NGN2I/NzzLnQ8oycTuPw9Cl1+y0vTiLQd9fyq+8J9wqHf
 ALZpcxhaUWFGNfEo0rWq8wYXtmhfScEPzIKi5Py7pV/flaZqS5n9QizXkR9B2FgJb3vVJWJ2YhF
 r4jJfYK0eIhGv93j5IQPXIPKZpJ15Iot9mE8/hXBjy6QdGbylxulXfwM+DIpjXhxrVUuEfV5jrh
 nMg+1QJazdd9DavllHfGJ1oP7da609mVTYfgtGo5z43w1lr9szP2/WxKR/DcRI1JCBafLrromyL
 aC5IpQy+3OxvnPwEJxxL3WPE3vP+l2dpnRBQt+BQlCpnyq+TewepBLlgeysWvwFot3rzulzCJFC
 3Dk8IoPp0qJNOGwGVahCBRQ3JZaWkvvV7C8psR1Giz8s4JibbZDj8gJqtz6WhoBaeKmB/ZNAIxw
 6Ds4LppwxGCtgO1mkPoiSlPt+OrxgoGQWCgt4qmwHBZBObekt2SelIKMD3Pf5a06Y=
X-Received: by 2002:a17:907:61a7:b0:b97:464:956e with SMTP id
 a640c23a62f3a-b9a5423686bmr358844066b.34.1774503674498; 
 Wed, 25 Mar 2026 22:41:14 -0700 (PDT)
Received: from JTOLLET-M-FKW7.cisco.com
 ([2603:5004:20a0:100c:6848:c80c:6661:b63f])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b9b2043add3sm72494466b.58.2026.03.25.22.41.13
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Wed, 25 Mar 2026 22:41:13 -0700 (PDT)
From: Jerome Tollet <jerome.tollet@gmail.com>
X-Google-Original-From: Jerome Tollet <jtollet@cisco.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jerome Tollet <jerome.tollet@gmail.com>, dri-devel@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [RESEND] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
Date: Thu, 26 Mar 2026 06:41:12 +0100
Message-ID: <20260326054112.51287-1-jtollet@cisco.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260113143107.1446909-1-ankit.k.nautiyal@intel.com>
References: <20260113143107.1446909-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 26 Mar 2026 11:57:38 +0000
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,intel.com,linux.intel.com];
	FROM_NEQ_ENVFROM(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[60hz:email,cisco.com:mid]
X-Rspamd-Queue-Id: 90717334CDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jerome Tollet <jerome.tollet@gmail.com>

Hi Ankit, Ville,

Following up on this patch.

As previously reported, the SCDC polling approach fixes the 4K@60Hz HDMI
issue on my Alder Lake-N (N100) + Cisco Desk Pro setup, and I have not
seen regressions in testing.

Ville, do you see any remaining concern with this approach, or is there
anything else you would like me to test to help move this forward?

Thanks,
Jerome
