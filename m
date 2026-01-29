Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIorNXLHe2nZIQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:47:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA90B457A
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:47:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F194110E8C0;
	Thu, 29 Jan 2026 20:47:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="M89UFxJh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
 [209.85.215.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B1B210E2C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jan 2026 17:54:08 +0000 (UTC)
Received: by mail-pg1-f179.google.com with SMTP id
 41be03b00d2f7-c46d68f2b4eso698883a12.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jan 2026 09:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1769709248; x=1770314048; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pRBeS4+WQmZOEFMKUG8W1VxyeXhFlcnz8q11qIvwb5g=;
 b=M89UFxJhHI6qbcUc9gyaDKKcgns+oBNp1sXgGbs/+cZ8rOxn7q3KrpvXeJDV5cT4mT
 3vnOx8p8ykM4/8l4hAbOJD5k9fe/RJtLTn3xhE+2KGUrp5dqT4rZggDP7rWLvl0+Bhk5
 QuCYgJ11M+wyCimScqaqbrMNsFdA/jtdL0qR30rWyBc+Z9TJ2Y2Ar/SdfVJIBaDDb3Vq
 GUh2+82xnnPWIxksc42RO6XhGtRpDYCynjZkdT70SMsxwvDDcVw/AEYbRYT9EqpvLhSB
 j4nCGiHC/tz/jYT7I7+p8WvNYMmpKLj8jy0lu3eOC/9NCu9ug0lRTNCDlsQ3ugq9ybzl
 I8Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769709248; x=1770314048;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=pRBeS4+WQmZOEFMKUG8W1VxyeXhFlcnz8q11qIvwb5g=;
 b=g8s9jqlwmo3EQyslrmqBWxRb2IyOlhQfGMKt93ir8NQbLxK+XEICaXjZ3i8OnVQ98T
 HarEAl5MyjrHH29o4EiOzf1t9KzIBpzXhTu3gBtps2MEir74fPiHhU10JQtxubtxr+mp
 UEIgrxPdwrSi9655bKa+s4QCf90wYgXNRHRLDt6eu3PNkMV01fneIXcA3M1Vxb8oL0Wr
 5XR7VNcWWRci90wFY4aVBZRtvCEyEjmxzFVgp0/R7HLHNDhuGZUVL3+Owlr+XI9sCHtg
 vjF64Pm+wq75FEosIMxhjeM6E1Cizl1F/8L6Q5oPMvOBKGMHc/NtPKt3kwXC+jpZ8ejw
 51fA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUivqOgl5i7eRAPZ25It7OgH1nzRXhzdo1bFVQ33j3EX6/7Kwf51Sc09wmMRIWdMbvkw5GewwXxCAM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx29cOsmbAVu0xLuqneoFosxdU61DK4yV/3HgF+znaDc4fC2f/N
 DT2DDxaN94+c64bmL9oPHa9eRD7U/h9H4HZZlKnGVToLfD5FyZve9PA=
X-Gm-Gg: AZuq6aK3fT0bEgDGhMBVWToRudUF5ThUXN6Jp8AQvXH6Qfph4/02fhVNc3fODPSxiMe
 uAV2t5KFxKZGYnfjbveevRSpI6J+NmNUuyK9PMn5UXyTvEKZ10MddnmK/SVn9K3ZO2oa7pw7HUF
 2Zvj2Ae8ktMCH0NiRgoAyQfZk1WBlFUmpKm/Z+yKW9NsUfR8Ahl98cE9TzLX/iAb5XDznpWuW3U
 J463lQ+OPg4EZMh6xN6METfFA99+Ufy7oOgyTvC9TEHaF3CD3F+lJia/aUI9/vRLeAn5whSAcFE
 Wz0x5zV9z3+Fp95QIXwdfZVX/zrdJDeYeJuvyS8cL+9gLZ4Ca9mHA3x/wL+hrmn5n5sjIVBWxhX
 nEVEdmU57ZasWX1Zwpl+Yog7ALBdFTz6nOHEPrpZR2UNiUXP5XGTj6lCdKl9NLIhxrrvhuu09X5
 fLqCEzo9NnKeeE
X-Received: by 2002:a17:90a:d60d:b0:32e:38b0:15f4 with SMTP id
 98e67ed59e1d1-3543b2dc1c9mr291029a91.7.1769709247945; 
 Thu, 29 Jan 2026 09:54:07 -0800 (PST)
Received: from at.. ([171.61.161.8]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3540f2cb5adsm5952303a91.3.2026.01.29.09.54.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Jan 2026 09:54:07 -0800 (PST)
From: Atharva Tiwari <atharvatiwarilinuxdev@gmail.com>
To: lukas@wunner.de
Cc: airlied@gmail.com, ardb@kernel.org, atharvatiwarilinuxdev@gmail.com,
 bp@alien8.de, dri-devel@lists.freedesktop.org, francescopompo2@gmail.com,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, javierm@redhat.com,
 joonas.lahtinen@linux.intel.com, linux-efi@vger.kernel.org,
 linux-kernel@vger.kernel.org, lszubowi@redhat.com, rodrigo.vivi@intel.com,
 simona@ffwll.ch, tursulin@ursulin.net, tzimmermann@suse.de
Subject: Re: [PATCH v2 1/2] efi/libstub: enable apple-set-os for all apple
 devices
Date: Thu, 29 Jan 2026 17:53:58 +0000
Message-ID: <20260129175358.1100-1-atharvatiwarilinuxdev@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <aXs3XOYucVna8eGH@wunner.de>
References: <aXs3XOYucVna8eGH@wunner.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 29 Jan 2026 20:47:43 +0000
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,alien8.de,lists.freedesktop.org,linux.intel.com,redhat.com,vger.kernel.org,intel.com,ffwll.ch,ursulin.net,suse.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:lukas@wunner.de,m:airlied@gmail.com,m:ardb@kernel.org,m:atharvatiwarilinuxdev@gmail.com,m:bp@alien8.de,m:dri-devel@lists.freedesktop.org,m:francescopompo2@gmail.com,m:intel-xe@lists.freedesktop.org,m:jani.nikula@linux.intel.com,m:javierm@redhat.com,m:joonas.lahtinen@linux.intel.com,m:linux-efi@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lszubowi@redhat.com,m:rodrigo.vivi@intel.com,m:simona@ffwll.ch,m:tursulin@ursulin.net,m:tzimmermann@suse.de,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[atharvatiwarilinuxdev@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[atharvatiwarilinuxdev@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: ACA90B457A
X-Rspamd-Action: no action

> I don't quite follow.  The patch counts the number of GPUs and
> uses the set_os protocol if there are at least 2 of them.
> One dGPU + one eGPU = 2, so the protocol is used.
> 
> Am I missing something?

Well your not, and it was a mistake of me, which i apologize for.

but i still think a MacBookAir dmi check would be better, as
theoretically you can connect a eGPU to a 2013/2014 MacBookAir,
which would enable set-os, and will cause problems in applespi.c
