Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9A2207076
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 11:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F0A56EAC1;
	Wed, 24 Jun 2020 09:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 945216EAC1
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 09:54:10 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id a6so1640602wrm.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 02:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=X32COInbvsn5CJIdDknfvJhy4dFUF1Z+V5tPrwngsiU=;
 b=ginxgRiQMGL/5vZ79CXQhHtKBO67lN5nrED/Qb6Von2IdzeXbR6Y1+gXiswnFmWMgZ
 GUgi/+hSfJfO8l5XF6YiJ1TwxbvZreDMVUpD+ymUgZU4pfcwTwHjhb3tN+tK86fmc57x
 KPG7nJTSy9vIDr8aEhhjAt4KIN2JbCjpiAzF9H0djA9Pn7ST3H1sMuU9SPvRJDMAW7br
 3P1d8HgfCOK32uBobsl6H5iAoTTNxBjhkZQYaCt0vFl5ataHifI6xmFxg+BrK8zSBQA7
 m0ADpL3EXqNmJJisfcNtHDyPh80tdCTdTEdMdHG5TjXmoE2FvDKXCWHg/XxaDp1kN8Au
 6RJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=X32COInbvsn5CJIdDknfvJhy4dFUF1Z+V5tPrwngsiU=;
 b=RAa3cmU+bNp/pNIN2p4+Jp3trjTnQ5NEuN9KHtM0Hr8tB3MfROuKRmDSRkFLLKA0le
 uI/YB56XhUZTJVLSfrlYSj6y95lL4AOvhDCKR5puazCwZnaJUJMAcQLZAb5dhl6QjxSv
 znJnzL+jGd7oBsYbnzQp3HF1+x6624a5wOrz3GpqoPrcvC4IneUOHmeFP9vC1h69UZlH
 9xk/Wm3uQvtcjy1zNQ9whPflPSSlfIJqMQgpHUw55DR63GwM2UFoxWgQ66hspZQkOWwl
 O8XlX3GR5c5aIR5RS24iqBkgB6/xVCRzKuWWuhizFmevH7stKBgBoOPjsZcaCCpRjeiK
 zS6g==
X-Gm-Message-State: AOAM5301ypqqDKg1kJlg5rDzwKAOhkBL/A9lOA3qvrd3CEq8s8igZNIg
 +o+H0Z4JUvunxUGVIJgcyky1ybQw
X-Google-Smtp-Source: ABdhPJzGPGrxfEoUjGks3QJCHTAj7s2APEs3Kc+f7MlasqBXHWhiY2TRyKIYVLdI+vRfa903CEVrvQ==
X-Received: by 2002:adf:dd83:: with SMTP id x3mr28969543wrl.292.1592992447800; 
 Wed, 24 Jun 2020 02:54:07 -0700 (PDT)
Received: from smtp.gmail.com ([2001:818:e238:a000:a4ba:2182:c4c1:3b20])
 by smtp.gmail.com with ESMTPSA id k14sm3210055wrn.76.2020.06.24.02.54.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 02:54:06 -0700 (PDT)
Date: Wed, 24 Jun 2020 06:54:00 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <cover.1592991729.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] [PATCH i-g-t 0/2] minor improvements to the
 kms_cursor_crc doc and some comments cleanup
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
Cc: rodrigosiqueiramelo@gmail.com, Rodrigo.Siqueira@amd.com,
 kernel-usp@googlegroups.com, aurabindo.pillai@amd.com,
 nicholas.kazlauskas@amd.com, twoerner@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

I was studying the code of kms_cursor_crc test, and I just adjusted some comments
and added descriptions for subtests.

Melissa Wen (2):
  lib/igt_fb: change comments with fd description
  test/kms_cursor_crc: update subtests descriptions and some comments

 lib/igt_fb.c           |  6 +++---
 tests/kms_cursor_crc.c | 38 ++++++++++++++++++++++++++++----------
 2 files changed, 31 insertions(+), 13 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
