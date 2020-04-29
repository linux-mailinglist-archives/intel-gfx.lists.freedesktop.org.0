Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA341BE2B9
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 17:29:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10D086EA4B;
	Wed, 29 Apr 2020 15:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C9EA6E9FC
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 15:29:54 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id n16so1166058pgb.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 08:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=ZqTIb8Npfrmir9vWKOifgQmbMXgJvwKn1AhV+k0JUxA=;
 b=Fsygay8Q+1WfbGZLexw93MOOr3JP2slZn/bL4L4TTAGvEWVZEMaQj4LDeUOVno4RhV
 V+cqUUamm5Phwjkc1kE8K3xY7Hj+EX0Q02QhbBc+Nbgki/B69PL4pvtNxPYt0bw6JZTT
 ovEQ7h1IuAERizhDASEATA3AL0HeBfoBsBDXLDiaJQjTqZYBrOXqypoLQNEYaitFHQuF
 0fUBa7DG+YJU/W9f1c974NG6/kxiZYlIOt90xxLxltY6f8JF9ECku8fUsVFFoojblMC1
 a/3DmVn5mR2R0T6i7AW+PcgMESJgPr5An++1LpOvNNEn1jOjtkxKeUfIxBXuCHr53qdn
 R4XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=ZqTIb8Npfrmir9vWKOifgQmbMXgJvwKn1AhV+k0JUxA=;
 b=QI+pquwckEggqMm5qrwQhM3j1EWRCFB+ehPmlGWtCu7D3DsWh33c/jHKJ45QNByEQt
 YFaThFEayn8OIVxgD+5aVOZcIRjq4svnkDz3ie6Qc/tKnOu5mocnIbKtGbEPVDLkhdgv
 sVJtidPJ5hgpKTQEhPFautBBULtOyrfuMbJbttVCmALhV2aunHAx1mmjgwndxyzxckMl
 0G3H63zMbiVho9YpiXcZZ1L+j2vETfzgmgLGCxMvvwyZujbxlfhNp9P5AS5b5TALcrPo
 aj6lPMBVk0/MorsmE5qgb+KANWaSnWWzx2J3LVWOazxRrh/mWfBVaxb+5/RcfMnxSfOQ
 C2uw==
X-Gm-Message-State: AGi0PuY/Y3jVtxz/nkqcsAczLaIgZSjQqr82YYYCxgCpv/biQYbVqLUM
 ThKehDzTBKBllIhSnSBcYqrtn1yA0h+p6p70E7irkHTt
X-Google-Smtp-Source: APiQypJhmHeLbQkSmQUyLZgkYfhKQ3uyxdsrXs5HzfS44yFwiMKA4VL0XP77BM4Lg44yGT96ZHR+Mxaetsg22LsiwdI=
X-Received: by 2002:a62:3287:: with SMTP id
 y129mr37372842pfy.167.1588174193403; 
 Wed, 29 Apr 2020 08:29:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200429114048.15227-1-apodtele@gmail.com>
In-Reply-To: <20200429114048.15227-1-apodtele@gmail.com>
From: Alexei Podtelezhnikov <apodtele@gmail.com>
Date: Wed, 29 Apr 2020 11:29:41 -0400
Message-ID: <CAJU=AjUBu8P056UtsAPLpK9ebeaA1sgon-7-esd6J-E4iCvNpw@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [patch] drm/i915: Update Slylake PCI IDs
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

On Wed, Apr 29, 2020 at 7:41 AM Alexei Podtelezhnikov
<apodtele@gmail.com> wrote:
>
> Add three new devices 0x1913, 0x1915, and 0x1917 also known as
> iSKLULTGT15, iSKLULXGT15, and iSKLDTGT15. Reclassify 0x1923, 0x1927,
> and 0x192A according to specifications. Of note, the second to last
> digit seems to correspond to GT#.

Ehh, GT1.5 is topologically closer to GT2 than to GT1. The second lest
significant digit indicates the same. I should move them there and
resubmit the patch...

Now I am suspicious about Haswell 0x0426, which might have been
planned as GT3 with no evidence of actual existence.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
