Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E228C5781
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 16:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16A8310E788;
	Tue, 14 May 2024 14:03:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MguecVbz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1540010E25D
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 06:39:19 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id
 98e67ed59e1d1-2b239b5fedaso4060171a91.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 23:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1715668759; x=1716273559; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=hOibIN2xitJmQsGGKgpZTUMu3F5H6Nz4kThmUrUT8Pg=;
 b=MguecVbz4biDa0TwQAsv9xwqPyQzojBAAZm7bMLmnl7gyHW9eT2LEi0VFD6cpZn/5t
 X7d20+Mr4L3gzUT53D12FF95CZex4jYYqZhjQRj9xVvaexU/VHgcSrOaPLeTTKY82zWf
 mTddNQk6MnJFE/Ex/aG+plPjyVQWDflUvgnTGCIcDK7f8xEHIqz6z8ZXLbsarBJzaRom
 +Y3vYUTdM7xNH6aSBVV2jKQsgIzgm8oo/CD6F322xa5n66FooTIjzudgVTQGnDgtJ1Z/
 xbJq/aJBGJSPNCiYdRRixNhtP+8E6HdDb1x738o/42krRyz98p3uSAuwDuNz6fL7AeSu
 rhdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715668759; x=1716273559;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=hOibIN2xitJmQsGGKgpZTUMu3F5H6Nz4kThmUrUT8Pg=;
 b=ZgnMxpk4ryBnDrcYwKdZxnWfZN3iZA+7dbZszT8egzze/6eNpZkMOnCW0XLBVTBdaw
 +XO7PdyG+ggsBUSt382dSApJx0K5wroxG4fSWV9CiQzLZbVzHLxeI1fuIANsEutbqoym
 wSQlJGDIJkR3x4zHoHaQCXwqGukNQ8Leh40TZh0nA10zxKeuSIncPsypbxfVb6WYqWyA
 RbYHvzlwLDmtt8iqcfr49slM8J9/yybukT8Xf0wMGHeMZHnT7fHlMGz/AuUbXXO3Kr6D
 q9RYa6mvN/oQRxhMNSJ293RBBHgvUJS72W5n9lereV7xE693TFQWto6ZWNI2Zv7lLUzO
 8RHA==
X-Gm-Message-State: AOJu0YwJ/D+IVrJtKc15ECM1XxSsugeG1awcZFH3E78ZY/TKW7q/ro9a
 pnrN9xn6AK6+TIFnMfqQfZ7JOMp3AzBe1tZ7Y5r1arljle8cD4XFGbZ/1MYcFC8VoTgbXpzaiiY
 MjWzgUB9jux4fpr4ex7DKlSklB52XXg==
X-Google-Smtp-Source: AGHT+IHZ01sMzApXlFteqiimaoUaPVFyudnfTbSK8biUhh61wLMTLsZheXVGKF6yQ9Jn8j0mkAy/8Y4cmql3LhmsYnQ=
X-Received: by 2002:a17:90a:5502:b0:2ac:40c8:1ed3 with SMTP id
 98e67ed59e1d1-2b6cc342957mr10167799a91.5.1715668758959; Mon, 13 May 2024
 23:39:18 -0700 (PDT)
MIME-Version: 1.0
From: Anup Kumarr <kumarranup62@gmail.com>
Date: Tue, 14 May 2024 12:09:06 +0530
Message-ID: <CAKdDKJUizCxr326DVe13R0acrGW1Z3VaSRsBN8St7aso_e813Q@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] intel: Disable
 drm_intel_probe_agp_aperture_size() on Android
To: intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000ee1f870618644295"
X-Mailman-Approved-At: Tue, 14 May 2024 14:03:34 +0000
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

--000000000000ee1f870618644295
Content-Type: text/plain; charset="UTF-8"



--000000000000ee1f870618644295
Content-Type: text/html; charset="UTF-8"

<div dir="auto"></div>

--000000000000ee1f870618644295--
