Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C35B59AF8
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 16:55:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCE6810E7F6;
	Tue, 16 Sep 2025 14:55:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JR3SzsBb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1302810E76C
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 09:42:05 +0000 (UTC)
Received: by mail-lj1-f182.google.com with SMTP id
 38308e7fff4ca-336ce4a8bfcso40715301fa.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 02:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758015724; x=1758620524; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=haBjQsvE5vE3ZaF/RXUldLy+CB1Z0cpROeB+NEV/yO0=;
 b=JR3SzsBbWTNYiYczuUMHQdXMvpRHnJOoj+3VrasGC3HuOOusUihhuubLb9mUOHhaxV
 1sD72TdTGxwvcNP0/89PJ5wugUZF/x/JfAqOP5G4lZZyKoeUEawGQV30Jf4YS8nSFJDa
 hXuV8z+Gffr3FgwzLbudbm/Cs7isHrs9+PQf13nT/RhwPK9Sg9JCNdFCZXaV+pvKU2ZB
 oJzjVgV2c+SBZK0hnE8tOKUf3ILzk6VNMhQ5+dR6Iw1OqtZiG+ezKSldTVgw7UhbW/2D
 dZliJjkdUaLDGHxJWJ+VJ6XTtW4ufWXbhta4e6sd8I55SYcnB5qaGVH5QPtd8Oaf7rPo
 JQrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758015724; x=1758620524;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=haBjQsvE5vE3ZaF/RXUldLy+CB1Z0cpROeB+NEV/yO0=;
 b=hKaaTWE2aDClZF8zDIBCCrdq0GBg5VVuyEHW9+IE0QHRuYiingrQUvyzqxGgqKK7Fz
 oRMDL21u3W3GPQj1aH36rwzOyIf9dmt/Umeo+oxGAXyqNJT21oCUSSjHK8qpF74Sfjc4
 X7vXPSZzNglvv1cw8jMWaoQc2F2xgkJG7VR3fLRd8UhUVztOLGdnbw6Zc4LOOzopnlEa
 5jt7Gsbn+aea3QanccV1V3Adp1bhzJmW5lzwTTvP2xnEUgelpujoO+fYxjNFTv9rkMTs
 ccYMXHxw9TmSyvVk8SLQ1LNlUA3/mkVwaD2l+MxSY9yu0Cks40bzTLN3hwjkkNB3pxHC
 Cy4w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUA+SvXx9uEpU7PtPAEpKMVR1JXV5PGBXYiCvHvb9qQdlcgi/7lYCGvGM0KUxNyuieFvIrjSBPatBo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yycn7vxCiIMz8elCFuIyWlFkKKzbIHOYH+nTs1fIq395XDv0mIr
 9Ffy9PcnoKs8HVCb1o22zt1/+yDxCigTbksZc/f7yETUak1bJxfKVHHb
X-Gm-Gg: ASbGncu/APp7D8J65UNBGsGJ6xy79XQ8fAQtfuKZj0Pr+BBMJ31ojCVQkz4TIbEz7li
 rfn5PDrTrwOYlVOGmMrTsEdz5Pai02yuQgPTnAPT7FQ4PeqkJTqOABbGkEmAx/X+P3WYtsXvEs4
 LNI5/NC2rwlau3X27A2Ov7ahh+E6RBl4xjk/Ap9J/1LMqR5vcoRFfcGw24G7L1p1x7BvAJSWGV3
 CgEehIlDILDsQpEP3uA7vhnEkMbHzQAo93DPocdMKw4wy9Iope1Y1En1cHf1hQFaRGHSXkKaGZF
 Sp2guaHMlRKyqfLd0kPdsIlB94y5Tb7uuLUF+N5ScI/d7nOuncvSwiI+hbpUVV85aKov1pO1p4E
 Nh/DP31PLnjb9tCq3zYVHPyTQnPZFzK0ur08u/iE9MM12Yig=
X-Google-Smtp-Source: AGHT+IGHsAz1XUgqjX9cBNXDDceT4RSYaRrx53ol9Kht+YGnRRfTcQN5imeqv3DeXohNMYqhdx9Bfg==
X-Received: by 2002:a2e:a00e:0:20b0:34a:7575:36db with SMTP id
 38308e7fff4ca-351401fd0f5mr48965051fa.33.1758015723646; 
 Tue, 16 Sep 2025 02:42:03 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-34f15a5835asm32481881fa.4.2025.09.16.02.42.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Sep 2025 02:42:02 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-22+deb11u3) with ESMTP id
 58G9fwKw021585; Tue, 16 Sep 2025 12:41:59 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 58G9fts1021584;
 Tue, 16 Sep 2025 12:41:55 +0300
Date: Tue, 16 Sep 2025 12:41:55 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: pengdonglin <dolinux.peng@gmail.com>
Cc: tj@kernel.org, tony.luck@intel.com, jani.nikula@linux.intel.com,
 ap420073@gmail.com, jv@jvosburgh.net, freude@linux.ibm.com,
 bcrl@kvack.org, trondmy@kernel.org, longman@redhat.com,
 kees@kernel.org, bigeasy@linutronix.de, hdanton@sina.com,
 paulmck@kernel.org, linux-kernel@vger.kernel.org,
 linux-rt-devel@lists.linux.dev, linux-nfs@vger.kernel.org,
 linux-aio@kvack.org, linux-fsdevel@vger.kernel.org,
 linux-security-module@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-wireless@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-s390@vger.kernel.org,
 cgroups@vger.kernel.org, Samuel Mendoza-Jonas <sam@mendozajonas.com>,
 pengdonglin <pengdonglin@xiaomi.com>
Subject: Re: [PATCH v3 11/14] net: ncsi: Remove redundant
 rcu_read_lock/unlock() in spin_lock
Message-ID: <aMkw4zTLRJqpVGCm@home.paul.comp>
References: <20250916044735.2316171-1-dolinux.peng@gmail.com>
 <20250916044735.2316171-12-dolinux.peng@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916044735.2316171-12-dolinux.peng@gmail.com>
X-Mailman-Approved-At: Tue, 16 Sep 2025 14:55:19 +0000
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

Hello pengdonglin,

Thank you for the patch, looks reasonable and justified.

On Tue, Sep 16, 2025 at 12:47:32PM +0800, pengdonglin wrote:
> From: pengdonglin <pengdonglin@xiaomi.com>
> 
> Since commit a8bb74acd8efe ("rcu: Consolidate RCU-sched update-side function definitions")
> there is no difference between rcu_read_lock(), rcu_read_lock_bh() and
> rcu_read_lock_sched() in terms of RCU read section and the relevant grace
> period. That means that spin_lock(), which implies rcu_read_lock_sched(),
> also implies rcu_read_lock().
> 
> There is no need no explicitly start a RCU read section if one has already
> been started implicitly by spin_lock().
> 
> Simplify the code and remove the inner rcu_read_lock() invocation.

Reviewed-by: Paul Fertser <fercerpav@gmail.com>
