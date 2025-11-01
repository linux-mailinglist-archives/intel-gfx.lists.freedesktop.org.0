Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B007C2BC8E
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E40310E3D6;
	Mon,  3 Nov 2025 12:46:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DcikLCQU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B77310E345
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Nov 2025 16:02:55 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id
 5b1f17b1804b1-4771b03267bso21422315e9.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 01 Nov 2025 09:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762012973; x=1762617773; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=snlIk2AtLs4XNb2ErHEe+3qJM7xo1hMMYlHCUMjRSIU=;
 b=DcikLCQUwvDBwnHQWKgvQwp5wVwPPG84PGAoBOUqbkvD9tWltr/+zr+N2nQW6aU3UG
 5ha86g7NGLJAyrSCd1T2WoQtHG2KOAX2LI795ewSSeLZXOQpkqkJe9mdBGq/7sADkg+B
 k2EypsiT8oQv8by3sbOYRxBvgmrqF4V6fSPR+XyZoV5TaG6P2Vvj/dCWBxg2sKTHK3B9
 qKXJ45aic/aXUuptwv+tBay8X7rNUWvOXmONgMOfUL/0/+tInpqtKrQiSIZ8zbxMDER7
 f2WlcYFiRjFU+8FUCvGwLEtLPYFbREHfmMvK3PJo9zibLAjb3jhSd83a8ffa2ri9uaTE
 AG3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762012973; x=1762617773;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=snlIk2AtLs4XNb2ErHEe+3qJM7xo1hMMYlHCUMjRSIU=;
 b=CkeqVdX9McukLHr3hwU7vkcLP8THHq0As640xVkyfxdkH/pA6GjUZSbrNLYzDfIobQ
 FOFzPmLNIw1Df/hAEk29W5At0FYD1F8gE8RLylvJp7JJg6gTWslnq7AgWbHp2XEA8oZQ
 moLFFnv6MpoObl6KL/htvTmRVxLuhEy6LS1fSDI2o8E6ekyh9EeTO7ALAzmzYEPb3Chq
 rE8f4vRNH4cnb0uhM1z+ABqVCue0uZasvmKpsfMFAvIeA42vhASX448EKrU3k7iaLPTI
 PS+dd2s3f8FjOU3wAyr23sa/2daSG99eq05lS0igYSzYmsG5hjJh4A1BA5Jqc5CiqNJE
 7lGw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXWQsGHyKX73kaP2kyIIkOelM/6pe4wNuuDDDOFD/sdEOeOEXiHFIB0mRZ6MA7q1/WEryJw22fFkf0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxymkNqv5uWCoc8kgNYNKYQh0O19qv9yNuFxatIpYGM2lJd16Uz
 ziKMYB+kMIz008zcYpRBO8QWJg1/BzHHmKsjc5LUMLpICVYZIj+tNkj1
X-Gm-Gg: ASbGnct6C4q5vTihysZ9FFAmgoYHNIrkebf+Ll/uhcgCOL0TIK/3j5X4oYsPMly/cB5
 5orELtdxEg5qYIadyQJ++UwTI2G/nV1F0VtSXHJ6W6PtXV2+5MF5sQxboR8oXBEAmDMMkY+Ajta
 ZYyFd1D3+ausvW37cjETl1y0q+QTnfIEapXQNM9p77oY8JtnlyQyYZbyz6UrBaMzGQsqhZSEq/1
 MhI+YfA3pC1AdZrducQzFOBHl76Gc0m4X9bRdDhIle4D22yyikTXn6CgK0DSCfXb7DEPQsV9rTK
 QtLvv2f2SUGHIdGyDkRnk6K6M2Gesmgj/KOYdj4EdhUKHhZ1dZYDnWmTQrdR7JH/AZC53bSKNzB
 h+2ji3i25hA+ZNN+4IqvbSZEsCugrSceY/XiH2ZyO2Ue9+YfXp5XHkuEI8ea89hn9lmyiXNx00r
 o3EggyGUw=
X-Google-Smtp-Source: AGHT+IF6++9cxPy6/JfA2+XmolAEGh77h5Gt3Ql/jgQ1PmZ7LSb2haAErW903v/sQkxrXx+lSvhLCg==
X-Received: by 2002:a05:600c:314d:b0:476:84e9:b571 with SMTP id
 5b1f17b1804b1-477307c2afbmr67200895e9.14.1762012973290; 
 Sat, 01 Nov 2025 09:02:53 -0700 (PDT)
Received: from localhost ([212.73.77.104]) by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-4773c2e674csm55245535e9.4.2025.11.01.09.02.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 01 Nov 2025 09:02:52 -0700 (PDT)
From: Askar Safin <safinaskar@gmail.com>
To: piliu@redhat.com
Cc: alex.zuo@intel.com, chris.p.wilson@linux.intel.com,
 intel-gfx@lists.freedesktop.org, jia.yao@intel.com, safinaskar@gmail.com,
 shuicheng.lin@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
Date: Sat,  1 Nov 2025 19:02:13 +0300
Message-ID: <20251101160213.3686-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <CAF+s44S4-BLbkefoov=6RiSmLGskfNgBqBP3sHnWmcp8XoicUg@mail.gmail.com>
References: <CAF+s44S4-BLbkefoov=6RiSmLGskfNgBqBP3sHnWmcp8XoicUg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 03 Nov 2025 12:46:06 +0000
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

Pingfan Liu <piliu@redhat.com>:
> Since the best solution is not available, can this patch be considered
> as an acceptable remedy for the kexec case?

This is question to me? I'm okay with any solution, which works. :)

As I said, v2 patch works for me. Both with and without "intel_pxp_fini(i915)"

-- 
Askar Safin
