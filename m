Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 226AF8A2E1A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 14:18:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5455510F325;
	Fri, 12 Apr 2024 12:18:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=toblux-com.20230601.gappssmtp.com header.i=@toblux-com.20230601.gappssmtp.com header.b="EWxpxzrA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15A0310F468
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Apr 2024 22:40:05 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id
 2adb3069b0e04-516d0c004b1so449135e87.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Apr 2024 15:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=toblux-com.20230601.gappssmtp.com; s=20230601; t=1712875203; x=1713480003;
 darn=lists.freedesktop.org; 
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=S4TnsFcjuXgA9nuQRAvIeS3/zSNBm8/9BgUmS0MLmqs=;
 b=EWxpxzrAP05nE5WhVpSLWMoLHhgLWaVwOXPs8qpumJh8khPnupLIdB6kFWMMLe7y1b
 EoHAaIzUILpYmbaLYx2c9L5FVmbcIoZnnD0XKBjFtyU1chCx8lifdN9AR5f5sHqW/hca
 qeQVDHnOLPFWKjeGXj1iwlDCvTaUvPUNNps3DIX5wERuST/4f3TKeo1u4xsil1Uz0Xhn
 zUZd99H/a1k5ZCK1gEuHJi1krNlC84Fp3ubEFxZ4dCWOODdV0Kphj8LhBPxcUDfntOPe
 L6zxrpRHgUHYgSd09Ykn7zWA8tM1Gp5H5BfDWY4kj38MpkFd+YPw0aqFHxl1cTNEhcYl
 wDaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712875203; x=1713480003;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=S4TnsFcjuXgA9nuQRAvIeS3/zSNBm8/9BgUmS0MLmqs=;
 b=BT5Qqp8B5fWPK9Tls1BDV+uXucwWcQAF7gU/xXJoorM5JaRAGESqfKE63QfEJ65x01
 oVDOmC7vV1kdCU/HvYfr7CThgrAawLAzMEH75Sc3Tyl81jo+vn6FsdEHyt/0lqonhPu9
 vgVvgHDrOYAsXQBsZl+WdV5WtVbJywo2eTyu3sovl6cJOKuECcwLUOZpVDuoc8F11cSJ
 d5sVwMzY/tVdNqR5qbEChZ+bX8R/KfEVs8vRxsdGJBWRDNIhiNoNqYxqOUek55haqnC6
 /V5sOfbdO9dZUFyH+lJiP/ZkHw1qzlDC5luEPjr7cnYS6jtl7PuDG96GV1IUO0Z1/+6q
 Rmaw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWa+hSeI2zWQqKFS5o58SwLYw0LZpRem+vM3m7hLt9krxlHJg38oTetJo1/RPRg26+cKZSbjndWj3TiAzOoxT2YlFhLCbadw4WbKcFtWn0F
X-Gm-Message-State: AOJu0YzBG6lkspyDjsxbwj2eEArlNjkWMKshaYcMlLThn2YHo0/Olaaq
 yrg4FkefGTc/tXPzzcTdNxKu54SrEQe4puaM2YnEgPEuXbm6UvUMUYPscNs8NM8=
X-Google-Smtp-Source: AGHT+IGY8qJhojjfCfabFUjR9vvGK5A/WLCfM1Bk52OhJKElMImmd0eUpMrnmf84M99SmcErfv1epA==
X-Received: by 2002:ac2:57db:0:b0:513:eeaa:8f1f with SMTP id
 k27-20020ac257db000000b00513eeaa8f1fmr649500lfo.47.1712875203340; 
 Thu, 11 Apr 2024 15:40:03 -0700 (PDT)
Received: from smtpclient.apple ([2001:a61:10c6:ce01:a470:5d20:8e1a:464a])
 by smtp.gmail.com with ESMTPSA id
 jx24-20020a170907761800b00a46aba003eesm1144762ejc.215.2024.04.11.15.40.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Apr 2024 15:40:02 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Subject: Re: [PATCH] treewide: Fix common grammar mistake "the the"
From: Thorsten Blum <thorsten.blum@toblux.com>
In-Reply-To: <0bd7ccc2-4d8c-455b-a6c2-972ebe1fcb08@moroto.mountain>
Date: Fri, 12 Apr 2024 00:39:51 +0200
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org,
 speakup@linux-speakup.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-afs@lists.infradead.org, ecryptfs@vger.kernel.org,
 netfs@lists.linux.dev, linux-fsdevel@vger.kernel.org,
 linux-unionfs@vger.kernel.org, linux-arch@vger.kernel.org,
 io-uring@vger.kernel.org, cocci@inria.fr, linux-perf-users@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <193B959E-60A3-499A-BFF3-EA7B2D0B6C12@toblux.com>
References: <20240411150437.496153-4-thorsten.blum@toblux.com>
 <0bd7ccc2-4d8c-455b-a6c2-972ebe1fcb08@moroto.mountain>
To: Dan Carpenter <dan.carpenter@linaro.org>
X-Mailer: Apple Mail (2.3774.500.171.1.1)
X-Mailman-Approved-At: Fri, 12 Apr 2024 12:18:22 +0000
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

On 11. Apr 2024, at 17:25, Dan Carpenter <dan.carpenter@linaro.org> =
wrote:
>=20
> It's tricky to know which tree a patch like this would go through.

The patch is based on the mainline tree. Should I have sent it directly =
to
Linus then?

I'm relatively new here and therefore only sent it to the corresponding =
mailing
lists.

Thanks,
Thorsten=
