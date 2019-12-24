Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8015F12A406
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 20:25:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A38726E0CC;
	Tue, 24 Dec 2019 19:25:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 842E36E0CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 19:25:48 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id f129so3153668wmf.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 11:25:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=0sTTR/sq8w1PIwwaWQNYvAYtYxANzXqH8+y+rG9iGhU=;
 b=YI+bm8UT35EEc6jhA6IFZAeUujvdFF6nmI5OOGVtlWV65t3oBQn1rkG0D/BTSjW7D1
 g4vk/AKWeOgBBmgb3XQkDuiSnwO5gwLkmKtdMWpjswkcJFwnFDp5yYJEdh+Eaj1zqmHe
 SXBmeed+/JtdPLhxDgGk79mKANl53/w0vEawFraHY4k3GcE6K1VNhA62QrRzwJHDSCLd
 Y35eckpI9pt5SK+ycwsGA4eAS/512rMpwaYodh6wlGwV31u7r3db05mlhewy4YuW1EXG
 pKEHjbXML0sZ7LMmKdWKDDLS/DgH6czcI59uSTvQjQ9eEqPWIQKVBqRxyZuwh7MpfiQ8
 Majg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=0sTTR/sq8w1PIwwaWQNYvAYtYxANzXqH8+y+rG9iGhU=;
 b=R9twu7pg3PMn1K3HsaV+dC4KpBQMQyJ8D7wH/TH+vrjTGDfV+oooM2VZcjKE1c8i6c
 30nr0y8FZxmEyvi013S6TcCmouPTY199hdB2KyXmZa/aHCdb5Dptu/LMg+i7fWQ0RTQW
 QP7QI5dfueIAPClXuLEDLi00YcBKxp4146JZJsg6KduryoCBTWTEU0CDVPs/EZYl50jF
 bpOeJh6nlS1LY6FqzQyU/SgfUSFGHxOPty6U0egRdF/2jxbXZmJEzTGZlkb5c1+V4/OM
 En/m0JSNED0kleKzmbARJ/F7c1r4+Lc0kKjUlLiVwXsCx/olOllxdHibDWuaQuBpw0FW
 QY5w==
X-Gm-Message-State: APjAAAWvXCnWY57pFSaHzlc7rY30oipgIJ6vcPdGYMT6DVe9lIoX+Tj5
 9/F7f7DZKPFLgN5/O5cPJouLDFtxQt7ZUsSKeh4QACP0
X-Google-Smtp-Source: APXvYqx/sJUr+oDtxShY5VxwE8PGrAOhygKalepK1Mc9csVPv+NkG0KCPCdMHJKxZ6+BKPLD0AiB6Oo7CiCShTwda78=
X-Received: by 2002:a1c:a982:: with SMTP id s124mr5353833wme.132.1577215547087; 
 Tue, 24 Dec 2019 11:25:47 -0800 (PST)
MIME-Version: 1.0
From: Grant <emailgrant@gmail.com>
Date: Tue, 24 Dec 2019 11:25:36 -0800
Message-ID: <CAN0CFw0NA6PFjNkjx6eDbXqOx7PWdmuqj3_b76O3MWut=j+uWQ@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] HDCP working for anyone?
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

Has anyone gotten HDCP to work?  No luck on 5.3.7 for me.

- Grant
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
