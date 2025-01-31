Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFF2A23F26
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 15:30:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 627EC10EACF;
	Fri, 31 Jan 2025 14:30:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AEs+cgq0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0881E10EAD4
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2025 14:30:56 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id
 ffacd0b85a97d-38a8b35e168so1291964f8f.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2025 06:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1738333854; x=1738938654; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=iBi1hiohGC+S+6e9vvblu5N0UyEjwuMx/7IqUm0gw70=;
 b=AEs+cgq0d8gVsFwUpmNeOnKJ7rDp1V/0YnnJ8oU54yT36v3haM/gK2VZagqSy/jHkv
 FlOYZHe2ZgjTh9zWTLJUFvelQ8VB/Qa/x4CWX/c7X+Vu5IxPJTmcY66B5NieqRxSpwvM
 eR+ynrX3JSMPat86cTVy85wZpzinn+1/4RoskCEvFxS7xjVtUdBmRZgj7kz3yksy8Ihj
 SdHQ6ARrq7PslY5uO2FStsWhNwF17Rd6lelhadQ724B9qNvL9HAWl/9mWgPFqGWtFYEw
 RzFNA5tI4laxIVpoDKo1HSMXeEch80Rb7xVS5HTb5FSvZ68Ac5/46yR0AWPAh9/acbQa
 iytQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738333854; x=1738938654;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=iBi1hiohGC+S+6e9vvblu5N0UyEjwuMx/7IqUm0gw70=;
 b=k3dP1Lur8bBTiQb3pciIgaTtgicVoaKJoayPc8gb6TI3T/50WcQge2+I3tnFqCWJ7j
 eUcN+pc6lAq7g8DvaEEXj6XX6Wa1QDiygGam75eMGrxxVLJdfGpTt4T07sYEjVTXie77
 hv9e6uUE3KY2fsBSA+/EKiJvbS/gNMfqFGfX4pSGY9rNfS4riPuHJuCHCUFPUNEdxWAg
 qbzBBUJp+UVRl/tA3y0U0PJAkP5JD65zLMxLDZMTGNFDCoEqvwFDuE9Lb3+iPot6BMvh
 UOvEPzRWeyi+andNcGoaA2pDRaZWOcDxifmgSU90eCjpMUMU1J2OFbBXxpMskg+GS8sJ
 1tpg==
X-Gm-Message-State: AOJu0YzvsFZI5GXin3yjVJN+02pgrfFkA+/ALqegBRB0AuepbQiuNDMD
 ZLvBpruzIPmzScHe3J2PXwNVQ4zjbog0HNTjgQpxDyXVcnUC7FmMAXynbMjN
X-Gm-Gg: ASbGncs0mgXME8+fPMzoa91j/Y8VoT4Ho0ZAWt92yieGWszlvNdXHCFJCvh2W5mKrG2
 zKw+3huBnmNw09hnk841+cOFcTYjDN4+ADHB1Yl+D3zFXLQ66CDTQdKJnQ6XAAGq0TzoosAHOTd
 6H14YyCem4+QvCgmzxzcNdOT5+APn+YuzruQoELT0HATlItf6VZMEFjwrbZr/S6Sjv/y/fyFZrI
 5dUr5zskBwgVyPlCWuVyUr60G3DOosm6BviiGUia65lVBIPdy0iA4age+MAxCHXfN99fJ3jfUyx
 1JdiusYsTPDb1Zaak1h4BLSGBe9L
X-Google-Smtp-Source: AGHT+IHVxsdeu7pedpuIFsuBqncfNHwunPEAMR8CbWLMEfop08+N3dLswGT8WuBt8dy3yc/9OrNauQ==
X-Received: by 2002:a05:6000:1569:b0:38b:ee01:ae2 with SMTP id
 ffacd0b85a97d-38c60f17f86mr2706067f8f.10.1738333854216; 
 Fri, 31 Jan 2025 06:30:54 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:14ea:9e00:b99f:ba95:78e6:9a32])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38c5c102e19sm4891382f8f.36.2025.01.31.06.30.53
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2025 06:30:53 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Subject: Trivial patch to run through CI
Date: Fri, 31 Jan 2025 15:30:50 +0100
Message-Id: <20250131143052.1728-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

One trivial TTM patch which fixes a bug for AMDKFD. As far as I can see
shouldn't have any effect on i915 nor XE, but better save than sorry.

Christian.


