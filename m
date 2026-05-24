Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEaXOOiZFWrnWgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 15:02:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B465D5FBA
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 15:02:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ABA310E632;
	Tue, 26 May 2026 13:02:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FRGkHE9j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9253F10E31E
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 May 2026 21:33:21 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id
 5b1f17b1804b1-4903f7a90d1so23416275e9.2
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 May 2026 14:33:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779658400; cv=none;
 d=google.com; s=arc-20240605;
 b=COY9aq47dFIgsWPIPQeMVZUdwKnNm2TI0eTmAkQRoNxR6/r3tzR9DqwATF6Fjl+nLF
 TdNXd/sHs/HeTD2xu/JLcQz+w+ShrhZeIK5Fn1ppAdilhdRc2O5u0eyypGlKA1X+nL8P
 1XmEKk9tfHuAySEBSdvPdyQEFec6j3nex8TbikkrqbzinfOjCcFiBldeAn3dwHpFIWLz
 wYuU6zAniVPzZ5ZjX2N/pC2k4s62Jz0wYHpQwT+UAIGFwcHX6i5uhmvzXvlYF9MMVKYy
 KKbIHXKuIS0P9yPha7j/LocmZOhqeNLia0yDkJpo5JUjwGiei/zyklkZAmkTiuOugRa/
 B6eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
 bh=RfBHHtWh1E5iPfg08hDGPxdg+iSUq3Vo7ZICvTuwHxk=;
 fh=uezM7R+mYcXNf6o14zrtM8SQkBLTMh+rOPTujh6rs7I=;
 b=UyCN2GLA2LWrixN+N3pxZn8YmJTlq6OQlxWBrDzpCa1VQULv1m2R96bUuYO4+Y8+0o
 lRR+a0yjQTHn3fEIA/2ASvHBCgC4auHgY5WAWA61j3upnxZX/HbFqyvUUz0NSRNN1OjL
 u7+gU38DfPwaRpCaBbYAQjRSkE1P1SEErqxo2awDddlQscdDo4EzJLenbRwakmJP21Lk
 O4dg6uH0HDhqQVOwoqRK7sZFviLR+0CCqYccx18MF+js3Z5XCnKLGCfNO1LZsbKyxewh
 VwRRMDn546ARHc5a4LsKgvOwUAfMoFK+F8Bxn1zmlMqAmGrYi65iGajk/SX/6w94MqrS
 Yy/A==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1779658400; x=1780263200; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=RfBHHtWh1E5iPfg08hDGPxdg+iSUq3Vo7ZICvTuwHxk=;
 b=FRGkHE9jAhuLY7lflKPlQcu98V+coRIiYtVFdgNep5JC9N/ZznUw6FrVr00qPB9klt
 9VxoNF1Y2m0bhaqs0yk3LuQkI01ChzmYiOkiiOsavveRredKXc+RoMAozcYyNkD8KVLs
 chvgxwM0HKqd1qhS8d9xIdZxUbHh1T0sq/9fFlZCv3b6OB4SjH48h5Fbx/KsfrbVsDTg
 T4ouxZ3SYp/hz+X/gaKTKE0ajn5Fse36U/aBkeSGU20SqQMwb8Rtp72mD19TA7Jp7RA/
 3V26W+Wja3fItUJG4UB7LJKT8JnM3jsV1BE9i//1m9AfopopnqMlqu1FHfjSrVnNHNjz
 RdAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779658400; x=1780263200;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RfBHHtWh1E5iPfg08hDGPxdg+iSUq3Vo7ZICvTuwHxk=;
 b=ZQY/O/i86G21OHjBiIvNShyzUHL3gM5ruB7O5qn2viQN4m5qPjO274gxSnRJV0dR2J
 gKhRDAyK/T/ENWVJy3ym/WgsV/AvSJkEM2noBSwwNqJ0AJtUnZfw0o8M+NeHdRJR3FRD
 8PbqSQti4KKZjPSTb4+Oh7vDZwVPvQkxVqhnB1thLQROZ0P3UCk2N23NNUYAEqfvD1tB
 EjywWLDnZ/WzKQXUKOOqmUbDawaymj+t7Jy1OpuPVbZ/jeiE3npVddy7z5yqIEz/UQtt
 RYD+QGSr8pzN5s3drYuzaz90No6am7OzPVoFp6ErE54ERaJmn0PSqJ4plUKjQoZ6j9vG
 frhg==
X-Forwarded-Encrypted: i=1;
 AFNElJ/LtCPHRmZYFwY6ZOJLksXu/j3FZ4ateIiOocIrDTBPPcVTeGk9W7gn9YRPdMOjrjgmcL73Nu4GpM0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzwEpw5lKyjzeyyIIW0ac4G3Nr16wXuwOtMX6HFaCjYIFtxWcEj
 UkcuGnWKOxC79XxEK18vAn4zeg+HZlx/cvRrjL4yBjhmwvxcF50YQQBlLacO5qsJl7TgKbG9Rtr
 gSw8k7cHNCMwQUNMXos7Ldt9SM9bKbnw=
X-Gm-Gg: Acq92OFdje2qSpCQEf/e2zPvTjGkts8HCG0EwNabvMMQpqg5PRjCma279MlU5FQi2ON
 j1wcPSY/YT1aA7yq6X9cj5/zxYZbHjaUrWNCAHm5vVgD9N9ir/ELfYFaeBWOrgb9SGdXknpptGl
 7ZAjKa2sZBa1K7wlBF+f0Mk0GwmtE89wKx6BXojuCR/wvgdjTjJ+KblCraFLE7pr2gorbdljBA5
 /6ahZTzkUGIhvLL/+d/J3QeoowVi1CpXGLWPXEgAcsIDWg03New8V4HyGor90yJ+bo/0bwBSTgB
 3KmjhUQ4SUVGg9uOgWMovzRjLk15u4Czt4rX9DYAPhhKqQ/CP/Vf
X-Received: by 2002:a05:600c:19cb:b0:490:507c:bdb1 with SMTP id
 5b1f17b1804b1-490507cbed4mr133267705e9.15.1779658399829; Sun, 24 May 2026
 14:33:19 -0700 (PDT)
MIME-Version: 1.0
From: Misty Robinson <11111577m@gmail.com>
Date: Sun, 24 May 2026 17:33:09 -0400
X-Gm-Features: AVHnY4LYUQ0Tyb2yqL4DCU3LkzUo1pVpr98xcI4oG9pyvGMAS9XPi4QkbHlPExg
Message-ID: <CAFufjN0cNAx9=xfNOTVZzm9wi8TjWGCRd0Bu_7P_QQUHj_BYNw@mail.gmail.com>
Subject: Re: [PATCH v5 05/19] drm/mode-config: Document drm_private_obj
 exclusion from drm_mode_config_reset()
To: mripard@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com, alex.hung@amd.com, 
 andrzej.hajda@intel.com, contact@emersion.fr, corbet@lwn.net, 
 daniels@collabora.com, dave.stevenson@raspberrypi.com, 
 dmitry.baryshkov@oss.qualcomm.com, dri-devel@lists.freedesktop.org, 
 harry.wentland@amd.com, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com, 
 jernej.skrabec@gmail.com, jonas@kwiboo.se, joonas.lahtinen@linux.intel.com, 
 jyri.sarha@iki.fi, kernel-list@raspberrypi.com, 
 laurent.pinchart+renesas@ideasonboard.com, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 maarten.lankhorst@linux.intel.com, mcanal@igalia.com, mwen@igalia.com, 
 neil.armstrong@linaro.org, rfoss@kernel.org, rodrigo.vivi@intel.com, 
 samuel@sholland.org, sebastian.wick@redhat.com, simona@ffwll.ch, 
 skhan@linuxfoundation.org, tomi.valkeinen@ideasonboard.com, 
 tursulin@ursulin.net, tzimmermann@suse.de, wens@kernel.org
Content-Type: multipart/alternative; boundary="000000000000be51920652970205"
X-Mailman-Approved-At: Tue, 26 May 2026 13:02:27 +0000
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	FAKE_REPLY(1.00)[];
	DATE_IN_PAST(1.00)[39];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[39];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mripard@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:airlied@gmail.com,m:alex.hung@amd.com,m:andrzej.hajda@intel.com,m:contact@emersion.fr,m:corbet@lwn.net,m:daniels@collabora.com,m:dave.stevenson@raspberrypi.com,m:dmitry.baryshkov@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:harry.wentland@amd.com,m:intel-xe@lists.freedesktop.org,m:jani.nikula@linux.intel.com,m:jernej.skrabec@gmail.com,m:jonas@kwiboo.se,m:joonas.lahtinen@linux.intel.com,m:jyri.sarha@iki.fi,m:kernel-list@raspberrypi.com,m:laurent.pinchart+renesas@ideasonboard.com,m:linux-arm-kernel@lists.infradead.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-sunxi@lists.linux.dev,m:maarten.lankhorst@linux.intel.com,m:mcanal@igalia.com,m:mwen@igalia.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:rodrigo.vivi@intel.com,m:samuel@sholland.org,m:sebastian.wick@redhat.com,m:simona@ffwll.ch,m:skhan@linuxfoundation.org,m:tomi.valkeinen@ideasonboard.com,m:tursulin@ursulin.
 net,m:tzimmermann@suse.de,m:wens@kernel.org,m:jernejskrabec@gmail.com,m:laurent.pinchart@ideasonboard.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER(0.00)[11111577m@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.990];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[11111577m@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,gmail.com,amd.com,intel.com,emersion.fr,lwn.net,collabora.com,raspberrypi.com,oss.qualcomm.com,lists.freedesktop.org,linux.intel.com,kwiboo.se,iki.fi,lists.infradead.org,vger.kernel.org,lists.linux.dev,igalia.com,linaro.org,kernel.org,sholland.org,redhat.com,ffwll.ch,linuxfoundation.org,ursulin.net,suse.de];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 91B465D5FBA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--000000000000be51920652970205
Content-Type: text/plain; charset="UTF-8"



--000000000000be51920652970205
Content-Type: text/html; charset="UTF-8"

<div dir="auto"></div>

--000000000000be51920652970205--
