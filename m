Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D0CA2EE7F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 14:40:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B676B10E547;
	Mon, 10 Feb 2025 13:40:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=zx2c4.com header.i=@zx2c4.com header.b="hzpluzKj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62AE410E547
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 13:40:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 31A305C1014
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 13:39:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DADCC4CED1
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 13:40:01 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
 dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com
 header.b="hzpluzKj"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105; 
 t=1739194798;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Mw6X/iqFQUdzZzpOTvgXgiCD2YSzyQe6hZv0qS0ER/M=;
 b=hzpluzKjElge+d0BeJ+1lXjJXX/0w/UYWdZVIUVHKQCJhmjmof1H9YRzZlJapVk+uHhsYu
 kM86E4ugo2FYbKRUgqSLzEcYjHVsWtE5sQgSMkWLJelnRLWN+5fCXgv85ktSGPEsNFIcmE
 XSaXVyuOuBvifQLAXJM0G41jvkN+D8U=
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id ef6bca30
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <intel-gfx@lists.freedesktop.org>;
 Mon, 10 Feb 2025 13:39:57 +0000 (UTC)
Received: by mail-oa1-f44.google.com with SMTP id
 586e51a60fabf-2b832eab8cdso2049561fac.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 05:39:57 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCWOu7hA9NkIzy6CJaZTlfvDQqKU6DBN9QgcO4pkPbAzRKNz6BIlVKU2Rm9KCrkSIOpRMczwFDaCvqQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx8CpCyX0rsv4P8fcmfHXfBJ9II2ECKz3GmhGqUI4YZYg/keu/4
 kUFqGaPAMBYgeCPgfk6gPfvI7t0ZZGxIioYBe/1CRMUWEAaRtPPS3SZgHK11vJeyuGsh3dnUvG6
 bGdok5GiTYKxJkWP1a6pt+2+qhxM=
X-Google-Smtp-Source: AGHT+IFBql/BeQkqRTlpU6s4lc0cE+gDINJWDeeicMaut547jipDtdf44tVSLcmS0dCGOJvnva+WRmdF7y7247OPikM=
X-Received: by 2002:a05:6871:811:b0:296:5928:7a42 with SMTP id
 586e51a60fabf-2b83ecf479bmr8294407fac.22.1739194796660; Mon, 10 Feb 2025
 05:39:56 -0800 (PST)
MIME-Version: 1.0
References: <20250210133556.66431-1-theil.markus@gmail.com>
In-Reply-To: <20250210133556.66431-1-theil.markus@gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 10 Feb 2025 14:39:43 +0100
X-Gmail-Original-Message-ID: <CAHmME9oqvWp_Nd1Gwgyw52qy8wxztMyCpNsjByH=VnRaXqczww@mail.gmail.com>
X-Gm-Features: AWEUYZlOFUvKkJGgoFJkHUG4F6JQEQsccvV0zV6xISxrgXh3QIvXkOy6817QqNo
Message-ID: <CAHmME9oqvWp_Nd1Gwgyw52qy8wxztMyCpNsjByH=VnRaXqczww@mail.gmail.com>
Subject: Re: [PATCH] prandom: remove next_pseudo_random32
To: Markus Theil <theil.markus@gmail.com>
Cc: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 netdev@vger.kernel.org, tytso@mit.edu
Content-Type: text/plain; charset="UTF-8"
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

Hey Markus,

Thanks for this. I hadn't realized that next_pseudo_random32() only
had two users left. Excellent.

I'll queue this up in the random tree (unless there are objections
from the maintainers of that test code).

Jason
