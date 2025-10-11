Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B5ABD5DDC
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 21:04:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6971810E4EE;
	Mon, 13 Oct 2025 19:04:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a12PGG6d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0287810E2FF
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Oct 2025 12:35:52 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id
 ffacd0b85a97d-3ee13baf2e1so2145126f8f.3
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Oct 2025 05:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760186151; x=1760790951; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TXJ/rrc4+RhJtlKX2UPvq0ayC/JQyR8aJQz5j72SzFc=;
 b=a12PGG6dbtnQbPrsyzxJVfQqVeFBFvjLKAZoT3L9HmXkpzx2mWWpo2YjjDAGjZO95B
 3iF4AKXGipL4pcpg6hIoqX/utRGWuVL90xTcs9QPXw/8UKG4cZB2ruYTEvgE0kY8/rZo
 iaptgKsXmwB5gRBWJdHmOIpt2yx6/40URTQYgUdEySgkvSBCVKi3DpasxAM9GZ3hT5wN
 /Ap9WtLEZ1PT+g5kKGtbdxtGhTqmref32SNJ3UHiXUgBcVcySIGvA0CQV5ahaaiEAJpP
 vXp+mQBphDJzvz0CKdlyk1ueWl4L/0kkoQTU+TY/s6HeWjgbFv7MM7Muhtm+XeabYgA0
 BR9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760186151; x=1760790951;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TXJ/rrc4+RhJtlKX2UPvq0ayC/JQyR8aJQz5j72SzFc=;
 b=byXr2MEg1iyVD75cyxE1vcBKELbtURP0pKeOGMemF3kIRJuVUMyQCKf2Z6sFfxea0Y
 jrD5bEKifLW9uTZd9j62D5eyXp+tRXemmXNRiq3EKyMENg23CAwwkgX3sd+CfVRQGDDj
 CEoHI7HKS4X3kpluyy8XRhjzqwKdDoMk7/oZhTFLyTrcQV82jTvp+c5kygwE9EO1qYvw
 oCKU20kOeGru0O3RmwCqQtyf9sS3FwDZZJWMSDsQ6ww7AywHWQCWm3NL8/4h3Vk0q5nM
 XQYRdPnV2yQI3AwboYNSN125XictTNNEIHTCaGb1gp/E2vW71tF/H7kCTk3DB98JMthA
 +Ufg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU6RfVQvcI5EqM24z1ljebpyP81DeGk26wppziBrKVOW5Dd/fiBTn/t75vjxFcEtXwo8djmglvdvZk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw/GYnSYJxWIElElU3l9vFfNRmujJAdaYunHSQopEQ/7dxKJCem
 SKeza8aNG9USRgBVa9IoHHvSpskQ9ZHmpBIzFJ5lz4/WXaVGHFCkj6IY
X-Gm-Gg: ASbGnctLiMAjXgUCuaBUybJmjnH+6UcEWHMH3GJV5ZZMBr0+8speHEQHT0ZVvj7A23m
 bM03XOY50Xlo1IIaYP+wvRKrrWcdQdSPJERSUnuMWT0bb8+K0q0zfki+2R4zifG18QQMyjQWvpz
 /kz77F0iBbKfdxpuvCLdgTESWrHqAZyZtzC1QHiXgD8VOYVpRMRWsU6AyEFjnMGwmFFHz68v1uq
 /6la9H8woUO9cYsGZvjHOzY2lSGjhXSagspvp4qExDVND+gngqiKcJjUSOHW9W92KmavHaaN7Ul
 LsF6fjtJstq8tLH2HcaJwHgpAX4xeeBgQHbmAnVyEU+wwzKhCABkHIzZeLD8dM8N2vYXQ8DWqtR
 mOonywAnkWnh+48JH73VtUHGoeOsUjFP3TERr2w==
X-Google-Smtp-Source: AGHT+IH8v/8zN3M8MFKs+aG72hohzFADI1wO2qjJoIkA1tRBIb/oYeOdd//w9yxZpvU4cs7Qn7ow9g==
X-Received: by 2002:a05:6000:1886:b0:425:852e:ceb2 with SMTP id
 ffacd0b85a97d-4266e7d4490mr9890801f8f.31.1760186151229; 
 Sat, 11 Oct 2025 05:35:51 -0700 (PDT)
Received: from localhost ([212.73.77.104]) by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-46fb482b99fsm94411555e9.3.2025.10.11.05.35.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 11 Oct 2025 05:35:50 -0700 (PDT)
From: Askar Safin <safinaskar@gmail.com>
To: ville.syrjala@linux.intel.com
Cc: alex.zuo@intel.com, chris.p.wilson@linux.intel.com,
 intel-gfx@lists.freedesktop.org, jia.yao@intel.com, piliu@redhat.com,
 shuicheng.lin@intel.com
Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
Date: Sat, 11 Oct 2025 15:35:43 +0300
Message-ID: <20251011123546.3085-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <aOaOJ1YI-NgTloIy@intel.com>
References: <aOaOJ1YI-NgTloIy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 13 Oct 2025 19:04:11 +0000
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

"Ville Syrjälä" <ville.syrjala@linux.intel.com>:
> I was asking you whether that invalid access was caused by that
> pxp stuff or not?

I just tested patch, which adds intel_pxp_fini(i915) to
i915_driver_shutdown and does nothing else.

The bug was not fixed.

Also, do you have machines for testing, except for my laptop? :)

Anyway, if you want me to test something, just ask.

-- 
Askar Safin
