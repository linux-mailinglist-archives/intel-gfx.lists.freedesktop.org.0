Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E8215F613
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 19:48:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4E1F6FB8F;
	Fri, 14 Feb 2020 18:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com
 [IPv6:2607:f8b0:4864:20::1044])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54CF96E438
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 05:40:49 +0000 (UTC)
Received: by mail-pj1-x1044.google.com with SMTP id dw13so3382442pjb.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 21:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rOZ+bA42dAqdH4Sfq8p9njX07ba31NbL9fuNSD2rL50=;
 b=qd44l22F/0HfjNFmG0F0+AcPDssV1NG1l9HnMG/T6aEFG4ZAaGoS5ugfMP6wv0WAEu
 qj6t0EjCjXlp8DVJmIdUyTwXZX8xTVTv3Dz9eKm5Sp8JGcvvPkOsiczGThdx/sxKjgb8
 ppUAoHJpY6MGbf9kHSwVnVXy9knTALC89LkViumGYs4KEkaf4QFwnZraggEALcIUjyHC
 6o2uFRsFgoqgn2dbfoKMzmefRS3GBw0lz/oTtBTR0WzBRhFULWlj4X67WpJIKZ72cNeI
 3HYTXbhpz1SjQQpHNxt1y2hetG99csohcA1CaPKqkhrTFZFktUDm9jzfwJ5TBKWx+mg+
 C0kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rOZ+bA42dAqdH4Sfq8p9njX07ba31NbL9fuNSD2rL50=;
 b=rDznPpbxUDO4FIDfxn8btgSLTHrUByfLCjNb87Ja1PgCdZ82vfbBynCpzOyVZKK8fY
 QE4HruhDHGPKSQNu234cczAtPOtgdWn9B/NgNwSNH9e0U2gWWjir0JAVgkgYhiE/04c6
 diuhyVBvWH7Xr9YuU+Qgbcc1W/SJh6yWHpLa9WPnZO7YTE2KnEMliVxDBf0ftxlWG8IM
 xotIJ6bG8ysIem0+uc3fXID4hoOfj2f4AMe6n+1lviOW0omZuttHmjgUnDA6uVmz2Gti
 ELuu2mc9Cqo/v+0qWQsBE/8fAPB0KnqrTuzCoVff5Sx6aGARBmHedtojyKKcqBappUBD
 YeKg==
X-Gm-Message-State: APjAAAVuq8jh5wZ2f8tuhPGhugZ4CtsXcaQtMpfF0fFrGqgGt9j8VA5n
 UH8gl2TA97DW17FlUrdzHpA=
X-Google-Smtp-Source: APXvYqxlFsqUhmCJbWbqRZxT9QnRZyv7IjKEtN0+hdG2U6j3c4SLMZ3Q1RO+6nEodQXuiGaOu6gd2g==
X-Received: by 2002:a17:902:ac83:: with SMTP id
 h3mr1647401plr.86.1581658848929; 
 Thu, 13 Feb 2020 21:40:48 -0800 (PST)
Received: from localhost.localdomain
 ([2408:821b:3c17:8200:f07b:d3a9:4e4b:be9f])
 by smtp.gmail.com with ESMTPSA id g13sm4961164pfo.169.2020.02.13.21.40.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 21:40:48 -0800 (PST)
From: youling257 <youling257@gmail.com>
To: chris@chris-wilson.co.uk
Date: Fri, 14 Feb 2020 13:40:35 +0800
Message-Id: <20200214054035.14256-1-youling257@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20190426081725.31217-1-chris@chris-wilson.co.uk>
References: <20190426081725.31217-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 14 Feb 2020 18:48:18 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable preemption and sleeping
 while using the punit sideband
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
Cc: intel-gfx@lists.freedesktop.org, youling257 <youling257@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cherry trail no this problem? sure?
my z8350 ezpad always hang freeze on kernel 5.4/5.5/5.6.
when i bought it,Linux kernel has been 5.4.

v2: Restrict the heavy-weight wakeup to just the ISOF_PORT_PUNIT, there
is insufficient evidence to implicate a wider problem atm. Similarly,
restrict the w/a to Valleyview, as Cherryview doesn't have an angry cadre
of users.

how to make this patch support Cherry trail?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
