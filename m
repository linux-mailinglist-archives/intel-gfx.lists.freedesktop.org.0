Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57933BC82BC
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 11:06:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A120E10E988;
	Thu,  9 Oct 2025 09:06:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="B4geSTF/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54ED810E8F1
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 01:10:20 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id
 4fb4d7f45d1cf-639fe77bb29so97643a12.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Oct 2025 18:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1759972218; x=1760577018; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gHNwCzkNohYs+pMN4B89ykQsTowN8bxnB/b42VHF3Kk=;
 b=B4geSTF/OwUGQ82EWuqTcysRVXfk8iTI0MaADLdmUFsNXkXUKmlFPWbcrRBKqeIeiW
 pRGzReXLR6XB/6+3WZNiCqzLWYeVofglKAykaA+ZUm8Lgz7MGfa+ojNmL+H6CG7xQlaH
 BnGaiVBhra0HSHh5HhWmm3Hski09zi/uiQ0XuRJndzXUTeMANR1Avo7u6I6suoM/kT/4
 S03IXhzob4SBd1Ura7SLG7aNsu5PZ5J6UdtEcVqSthPggNNmanmoO8pmkQjhf4eep85c
 I7xXv8Nlnyu5pkodyTEeMFdK5kYvCujqSbaWGHEEzYrKzX9IF8sS/Fk+IPeE076oiOdt
 UIQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759972218; x=1760577018;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gHNwCzkNohYs+pMN4B89ykQsTowN8bxnB/b42VHF3Kk=;
 b=XzbPfhoEMUpECCKYzgoNS8AJ8o8YW/qv7RCaXqN5M2Ml6b5GuIm71l0oWGZm2pnKA9
 1HDgiwaOfKHVs0gzntrBSGsbM4aG/g/+0lXUdWvXh7zW7sAE9pLu500I3J33IOmlUYlt
 zW7Qy01UuCpGyVGjYNT6zy2018umFELuDQBNLbkLz2a4kmVxnpr+1rGfgIRn17YcQAJy
 dmXUzbnYjlHobNJqyEh3ZAx+F0X/AgNjQYKAPAhXamhW+tFQ9KUTMwwsGhD+Y9amSUv/
 lDj22hrlgwqyb1/jscqN3US7KRtPPvyLkjz74YMYXCnwUETKmI0xkJ4Yyimq2iF0D2Eb
 htmg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUxwfmKRYw6YZ8+ab2dg6MGB2TVMNW5jvqEmLN9ZQSlpFgTYqtqUOuUcBeyZiTuDOteUa4L4ZoBUes=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwVB+A5ZyjS6Gkhj64RKI/vY1zBFiCGVQCKptyoScvV5D/2WDGo
 1ke0br2Pyien5afSTkUJr3ecIHB38bvOrx0QMBiDHeHpaRX8gZns6jJk
X-Gm-Gg: ASbGncvoFxb7wToMTWcRLFSFb8dJGg1fpdkW7Nf9IuFlXGGeRzEgdy2B1g/gquFHYMH
 t13ft7bYt7toK00Gt7y/bGI97zMUUCv4uproFEUXmepjsheYdEDE7KcWymrXjpvxPxIYYGaE7m8
 SDJCWbUC3f56X698yUS2hLwZtRcnBzumxAI7pDbrNue8+GjCQwropDv0LJLknJP+K7dlk2BFAMt
 6uCsgExEZOlEPqr6/pMoWM3J59zb98ITQzd51oEOmf5rJm3T9wFq/DFIFHI1xWFaf21c0Zi19tj
 eKO3xud9Rb8g2svIN+jl+QnumdPpct/bYLGr9YqSD2Njg1c/8fvujykU5hchAxq7d2hTDQiWvKt
 T5dDntO/zdWsw6LRGxmZ/oH1msz9SrzjwaNDKM1u2Qpc=
X-Google-Smtp-Source: AGHT+IFUVSoo1eoMPJWEELwFIyb0TmQNTBhyRzWwaIZEnkB7f2xM/gEhdtxapqA11Ju2Mj6UA4MtcA==
X-Received: by 2002:a05:6402:510f:b0:62f:5992:a64a with SMTP id
 4fb4d7f45d1cf-639d5b7f489mr5361550a12.13.1759972218246; 
 Wed, 08 Oct 2025 18:10:18 -0700 (PDT)
Received: from localhost ([212.73.77.104]) by smtp.gmail.com with UTF8SMTPSA id
 4fb4d7f45d1cf-639f30ad247sm1240289a12.7.2025.10.08.18.10.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Oct 2025 18:10:17 -0700 (PDT)
From: Askar Safin <safinaskar@gmail.com>
To: jia.yao@intel.com
Cc: alex.zuo@intel.com, chris.p.wilson@linux.intel.com,
 intel-gfx@lists.freedesktop.org, piliu@redhat.com,
 linux-kernel@vger.kernel.org, shuicheng.lin@intel.com
Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
Date: Thu,  9 Oct 2025 04:10:00 +0300
Message-ID: <20251009011010.37763-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251007202514.1661491-1-jia.yao@intel.com>
References: <20251007202514.1661491-1-jia.yao@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 09 Oct 2025 09:06:04 +0000
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

[It seems this letter got lost, so I'm sending it again, this time using git-send-email.
Please, CC lkml additionally next time, hopefully it will work better than intel-gfx@freedesktop ]

On Tue, Oct 7, 2025 at 11:25 PM Jia Yao <jia.yao@intel.com> wrote:
> Make i915's PCI device management more robust by always setting/clearing

Thank you! I tested this patch, and it indeed fixes the problem. You may add:

Tested-By: Askar Safin <safinaskar@gmail.com>

Please, CC me with further patches, I will test them.

Also, I will repeat that the bug doesn't happen if we have
CONFIG_INTEL_IOMMU_DEFAULT_ON=y.
So, probably we just need to patch all distro's configs to include
CONFIG_INTEL_IOMMU_DEFAULT_ON=y
(Ubuntu already does that.)
On the other hand, if there is some deeper issue to fix, then, of
course, I'm glad it is being fixed!

Also, please, add some "Fixes" tag and CC stable to make sure this fix
will be backported to stable kernels.

For example:

  Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
  Cc: <stable@vger.kernel.org>

Here I chose the initial git commit, because i915 always was in git history.

-- 
Askar Safin
