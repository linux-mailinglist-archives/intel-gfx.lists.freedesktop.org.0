Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDD51BEE97
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 05:16:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2F636EA72;
	Thu, 30 Apr 2020 03:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 209276EA72
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 03:16:06 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id l20so2075776pgb.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 20:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=8Ev+yzF2uUk6yN5cnUooZqd9Tk8yYub7piHPkgrwGWA=;
 b=Bum2tUwBsd+yl8lmZo1NcEtFx6zoW6VTkbh0jEEQeb4PDJYUH2eNHm6qZAgn5FwfgN
 QTzAGusxxePuvS4lb84R8h4ETy8aWqPAcX7hsLl1fbgnKeUZGHzpaEozTmGrW1FTaO0V
 jzn9Zpx9tQp3Kubr4t/2Iky+Ac/Bg36oWdoKsvki4oK7ckChqpW30UkdgiYJS5xiuKvO
 eLX0UmaSpH2V0N90Q27EC/abi/XomhHwFZPzC4Tts05VonS5hIa5cjUkchV/iAPu7A1u
 pldkNjxKVgOz1+IulaxEsT47kcvDsBb6jkxLv3vr89pIPfeWcvjYxrFghflZSt4cwKdF
 bbUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=8Ev+yzF2uUk6yN5cnUooZqd9Tk8yYub7piHPkgrwGWA=;
 b=qC9XBwRmNdY8ZUsDEKjwG2J+VTHeAuTZ9n/LiumIJewyI4Nbr6poNPk4uMSEGuwr2Q
 dWO6eJDOEku/B7s1XIrwusSDTQytdydi95eZFPvkkOP94EKyeoSJD0Rhm6zjV2OYx7Ho
 ePJuKO84beS3YMH6c4TNj4GjVxcZc9Q32dgKGMsqD+1GIQr6sAIQxh3eTNRMa+G0B+uK
 kQcxB2wwqbvtBnb8JBS49HtbhgG5MrYKOi5mrJACYpojfAUBCmKis0fItDiCImEtBfTw
 Yyciwlvn15y7+2yJLoj1LjYEYl4PPyXLI+W17GzuX10YUccn0+ypKv5IUauis41gq5UU
 nWVg==
X-Gm-Message-State: AGi0PuYyPFP59j/46P+5EMbaTVENCU6J93fQQPseCq1d4hSV2hjY3vUB
 L4DpxXlamataTI2FfMD9XZ3slJid5UOpqlmGpjmQ+w==
X-Google-Smtp-Source: APiQypK8HoZBwCf9quJdfE1+2IRyUQAaff3tyHHHdKvz+qyAJJ2VB3jYdbbe28/R94Uw8fyCrc0NO4/FQR3cWzY1sAU=
X-Received: by 2002:a63:b952:: with SMTP id v18mr1327098pgo.179.1588216565267; 
 Wed, 29 Apr 2020 20:16:05 -0700 (PDT)
MIME-Version: 1.0
From: Alexei Podtelezhnikov <apodtele@gmail.com>
Date: Wed, 29 Apr 2020 23:15:54 -0400
Message-ID: <CAJU=AjWPvKA5vdgWuY6hMcq7dnZD0Zzjm0eDQBKU5TouvdL=Aw@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] Update PCI IDs
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

Hi all,

What follows are small changes to Haswell and Skylake lists. Some of
the changes are purely semantic because some devices are not even
tracked in the current Windows driver. Do they even exist? Perhaps, at
some point the discontinued lines can be cleaned. I also learned that,
from Haswell to Kabe Lake, the second least significant digit
corresponds to the GT tier minus 1, with a single exception of 0x5921
(GT2F).

Alexei
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
