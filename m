Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 036224533A7
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Nov 2021 15:05:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C98EF6EB0A;
	Tue, 16 Nov 2021 14:05:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B5D46E092;
 Tue, 16 Nov 2021 10:24:37 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id 133so16462036wme.0;
 Tue, 16 Nov 2021 02:24:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XdmXnXmiT9YP45avjBU1fPKaGUCkER2/u8S4S7gQ/kQ=;
 b=HE/kI7xzEm914o6T8PhvdrIyxVON7enARn2gt/psWfR//iZ0cG4Y3j1YjMQPZX4ay0
 x6IT0/GJBooASVbTMjN+BvDGN8RDAkMNrX0J/84p73biDL4ISwRphVOxFIO0xWEqGuai
 Ff0NUEf/fEcV91UzKrf7tnGg3SroY+0f8CgZEmHcy4pT2d6/VkKBD/Zsr9ww62Vsl9Je
 dMwIXra2+u2BBMLllOk8GRoPmp8DP2aFTmIkmm/vmbVKaLg7MkjBzAuDDjWZp/vIwOU6
 SYQtGeH9GX7ojdBKa/TWfqHqq2A5vDEmvAJGimuxMmlQ3Au8L1YTt/p3H/wJhqvJiVdB
 zdng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XdmXnXmiT9YP45avjBU1fPKaGUCkER2/u8S4S7gQ/kQ=;
 b=bsLd2LRqFAuNtno1ybeu2ObX7Jh0JfJdqwMLOxJpi+FeeNkAS84rgcwIp94+OKr5uB
 f250Nho6gA3jgpy+TWvuNYAZfPIrjRnueORPTKllDw1WD73NDWOIYMGFjBrNqTnmbKvj
 SFwn6AJBv1WhpvLYQb6niI5LWKlZT8D9qF7ODMv1oBvXWalwdUhE+mAulGED8WVwUrcE
 Un7ml3vdasz76KPY1citNUEDFDOfMwa8uBFPob6EH0jVrUfrpTQDPPpPO7XhCTAJA55x
 n9lTi67ZFTZ9JyoLgSdmK9vtag7pwurlp6mlkzUxS5OuHvli6D3ewsKgZU3o1F5Mc5hQ
 rtIw==
X-Gm-Message-State: AOAM530B2cqJCyak2EPJF4XuskYAcfmjIQDSQOUfZPqzerkl+er3jdfM
 HsmCJAUD+Dz4OvevLk54LPRmAriQtKLGcg==
X-Google-Smtp-Source: ABdhPJwOIVfdEYUDmLPTE8ztkjo+Jh2F3QzKqIDrshkGsBMjvhAr4iijizYPrs6YpsX3PP679d25SA==
X-Received: by 2002:a1c:488:: with SMTP id 130mr6491357wme.157.1637058275525; 
 Tue, 16 Nov 2021 02:24:35 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id 4sm22119334wrz.90.2021.11.16.02.24.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Nov 2021 02:24:35 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 16 Nov 2021 11:24:25 +0100
Message-Id: <20211116102431.198905-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 16 Nov 2021 14:05:08 +0000
Subject: [Intel-gfx] Remaining i915 iterator patches
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

Hi guys,

just sending that out once more to make sure CI is happy.

Regards,
Christian.


