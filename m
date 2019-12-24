Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 765B412A404
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 20:23:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C3ED6E0A2;
	Tue, 24 Dec 2019 19:23:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C8E26E0A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 19:23:49 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id t2so20536244wrr.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 11:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=WHf4FCN1bTB2KQmTKfvUBnC6LnOZKVUPQhv2JyFgECs=;
 b=IRx2GcTdEjeJF+4ZgJn4jw324PwzWJq1knwa0NjR0I1PkNKwwbaLFD9DAQs3To+yrq
 /Yr88gBvn6rLWGMsONaoBpdL+mMsgCPHEwyO3EQVaxShxsKTMRmsAZJVixfus8i1Y5nQ
 +2iqFsUDtdR/lkex7poPw564qSeiwEpKp2ZXoKK+YZa6km1EGDMltIFPl29tOyCFBwLI
 rMmX45O9qcK1JoELMPzWMvJskemhseIHP3svqHZFC6st4U/JtciVwDn7ByKM2GogvS6C
 +g/VpfWdAUkjULahJW4jBK/ccS67h5f90taxFDbgyB8HwRL5q+GRsRpTrcM5FOnXJkw7
 lBAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=WHf4FCN1bTB2KQmTKfvUBnC6LnOZKVUPQhv2JyFgECs=;
 b=fT86+h5GeMy4DGx40DZcP8whth8SSsBcyzrVNHVARvM6p6BSreTEPUbfzLhNqpa1l4
 SuDkXv20hiJTj8NBMP8ot+Ps2NXwuW391a+RStMNzz2QGdH5DlAraa1K9cMIxfkUBhBK
 DQc+JX64RwBck2LgCPDU/phl7DqQ15XNbias6BBAE7Wz+EwJ6HaP8XcjTzmnv3c79cX0
 YPmez7cGh65C5rZy9fJws/yn49KGy1pGauqHwd7gVmABBbkdCy+eYW7cqA+zPzNE/CxY
 OeQp9tYjMYtoE2IJUeJhyU7VsdgGObShOusBqa015XoU3d5KsIvxYMyb43N8IEAZDjWu
 RAEQ==
X-Gm-Message-State: APjAAAXXtCgYVkMrBvfo0oEFrXrAPpe/+fPVNCXIN4/kJEwdKoTDUmyX
 dAl9GIl5XeGfNJgyQ2Ij9lDjrtYBIMkab+ou1RFBDQ5SnFQ=
X-Google-Smtp-Source: APXvYqyMSdgAxLEyjBbeOkCQ1H1p26dEIrB2NHrkNv2GsWaz3TLCAQAO1W/Xf7wlAaWnXTqRQJ6nO8KrrDlczdkgl2A=
X-Received: by 2002:adf:f491:: with SMTP id l17mr35963341wro.149.1577215427891; 
 Tue, 24 Dec 2019 11:23:47 -0800 (PST)
MIME-Version: 1.0
From: Grant <emailgrant@gmail.com>
Date: Tue, 24 Dec 2019 11:23:36 -0800
Message-ID: <CAN0CFw0nEGAoM=Q-VCOfn3O1BJ9n-HJXjMteHrdEZ72wwpyFwg@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] acceleration works in Brave browser
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hardware acceleration doesn't seem to be working in Chrome but is
working in the Brave browser (which is based on Chrome) but only on
YouTube (with the h264ify browser extension).  I'm using one of these
which I believe is Bay Trail:

https://www.gigabyte.com/us/Mini-PcBarebone/GB-BXBT-2807-rev-10#ov

I've tried 6 or so streaming services but nothing accelerates besides
YouTube even though chrome://media-internals reports the h264 codec is
in use.  Does anyone know why this is happening?

- Grant
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
