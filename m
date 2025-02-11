Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A22A6A312A6
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 18:19:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB94A10E3A1;
	Tue, 11 Feb 2025 17:19:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KAdqt//i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84F4010E3A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 17:19:43 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id
 d9443c01a7336-21f5268cf50so63629185ad.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 09:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739294383; x=1739899183; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=bQPkLYkb1BFDk8FeaBZO8f7q66ouUHpu5SrgwsVUMKo=;
 b=KAdqt//iUySONIZDSc9KRLU2Fk8k95V3BRRMtGmlrLxkv/+R39koHqjTWKRt9cI7hi
 7wjZOKLViQOrVKhYcfEtFLe6T8S9I2/l31U8tyditRXgWRr41/YhnNi8uggqaiBZC9yX
 zKTBLaG87nAjVu5w/++pRGY0s+WOs4bsxlaxZ76wjqeKWnQL56SXlm/JguVohS2BIsBn
 Ml8lBrrkNSLw3QZDL0tUpzXfPtWWZBE37+P431UlTb20X9ftWom7k+YV1oHg2ywVxmOR
 hn2MFOKg8m+O6Y0fNnw5BoysJcTW8/+5qRuhb1L8XvoHmEBju4zw8dlu6wGZbnaw3FAw
 iJig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739294383; x=1739899183;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=bQPkLYkb1BFDk8FeaBZO8f7q66ouUHpu5SrgwsVUMKo=;
 b=NPg8+xGR/tGG9OlAqPH1iuQp7epkEkO9cO2MgISZUbjTsQZPuh3nRwIUJbM9AwZRsu
 z7sfDBRQbd/eUelMW97NBfcLDdqNDVWrP4tww7AwloPvqxIVo0qCmTZeu1kTuemYcIvV
 1Em4P7Q65oh8h6r/4sC74thG/6hMiwCEgjJQ58aWTV/8Jmxg0XrFAiNCrbpGSaYeRnyF
 RwQjJfqGNvMHpftZ6I/0bJUKwBjOyFD1h8E1thAhnUjW1b804/8fub8Z0TwtKmZFE7fn
 4KGQ5ut/Xi1+mFQDxvZTI7DuWa4Q6+qbx4drhf6JLqeHrIdUcKKHYau49uSpZvxlWz5k
 mFyA==
X-Gm-Message-State: AOJu0YzvnC+iJaL9YmpplxEXBbQElFzLqwwut/sdXXwdDVl+xZVJZmrU
 2OZXWnh0/VNqZDg+pHHxPKxQw9oQtxmUxRhNMD56QBCM4OQv2OB722gjvqDWvng=
X-Gm-Gg: ASbGncsFGd55v65p/C6kmjZ4opPyEjVOvNuLTnpXIPpFHCA4s4ZriPfiZZmtVWQ3xN+
 RNFI1NjANS/TuvBJp+TtX9IO4icU8N1XUlHp91mvE4HV8BIOaeD5cbbwKFod5iBLFYZVFZv9PnW
 HroUpKXJn3k6uulSxMiKuKzhkZfDanAH+KNmP95RXzvTjkpZYZ+yr6ieC0ao2IEJMnRBjNvJiUq
 ufz9FbRCRhjaTjVSjahVqIzkSZIiMzoZJi5jP75jVQ2uODXsBbIcEGDC6+5MHBnVcE0wNk+BCas
 xUqa8sdip7+drvja73lm
X-Google-Smtp-Source: AGHT+IE7mTEoZTb06gJzs4ECQZ84yllUSzc04dPlJJPZG9fUWgoJXVK8QcbOjjRa0bzmYPcY3ybicQ==
X-Received: by 2002:a05:6a20:4308:b0:1e1:b12e:edb8 with SMTP id
 adf61e73a8af0-1ee5c7dbf1dmr40952637.30.1739294382663; 
 Tue, 11 Feb 2025 09:19:42 -0800 (PST)
Received: from localhost ([192.55.54.41]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-73048bf14ebsm9702047b3a.104.2025.02.11.09.19.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2025 09:19:42 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
	andi.shyti@intel.com
Subject: [PATCH 0/1] Add writing of WAIT_ON_DEPTH_STALL_DONE_DISABLE for gen12
Date: Tue, 11 Feb 2025 19:24:30 +0200
Message-ID: <20250211172431.2631083-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
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

I put writing of this bit in gt_tuning_settings(). Not sure if it is correct
place or should this be in gen12_gt_workarounds_init()..or somewhere
totally different place.

/Juha-Pekka

Juha-Pekka Heikkila (1):
  drm/i915/xehp: add wait on depth stall done bit handling

 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 2 files changed, 8 insertions(+)

-- 
2.45.2

