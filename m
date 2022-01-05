Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC6F4899DA
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 14:25:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D44E11A483;
	Mon, 10 Jan 2022 13:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7042210F7A2
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 14:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1641393644;
 bh=G5jn2VmNGSfngWGtTuVSZfUwnoLgVtUV6u4JgbQEbMw=;
 h=X-UI-Sender-Class:Date:From:To:Subject;
 b=GkfmMeTrHQxAuxdYZ5WlIYhRXX7g+zmjicCVMB+SbGk/u2ER3Ayt3+FfGfqZNW0hA
 vzd2tTEfHgEzh+pdJqyA2efK3jFwKxMlqLzCLoONlUdTMuNGPTcATQ9KPgvhX3ec/B
 tR1/LxElZFh5o2r+1H5Gf1SL7xv9tg3qm+J9NqqM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from pop-os ([37.5.248.227]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MZktj-1mr8wt2GU3-00Wlh8 for
 <intel-gfx@lists.freedesktop.org>; Wed, 05 Jan 2022 15:40:44 +0100
Date: Wed, 5 Jan 2022 15:40:43 +0100
From: Florian Dollinger <dollinger.florian@gmx.de>
To: "=?utf-8?Q?intel-gfx=40lists.freedesktop.org?="
 <intel-gfx@lists.freedesktop.org>
Message-ID: <45037273-8319-4B7E-8968-87CDB123CCBA@getmailspring.com>
X-Mailer: Mailspring
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Provags-ID: V03:K1:cEvlHQ+Tv3h4VuFn8V6+QEgxd57PqH33wJjC0w3B5BTnEZDKuc9
 gNnNHm5YPctQfN2OQdSnx35FzIx2JOzIP65gWVx1X8OaoTD0Fm2uiNQ4H+g3xZVaEh8Kp4q
 4qgay1c5JW+Jpot0EJ6T/gMTsvhX+4HQRkWgt6WPC62iQL3AAG0Lp00P+0zbTENH6VupDET
 HXYO77X31q+TaA2wF95qw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oElc/Ws3nPY=:lXpT3hwX93sfiyZasoeV7+
 itrEbfuQYsVLmQX9CgJXhxyJHH6XckrPRMq1s07Tp8s6VI3scPTLEgl2oVYo6DyqVOZ8rbY2m
 sGsyBFcLU5V4GF9L+9GexgenPIZ7YhsMSzt6H7MnANX813RFi/hbw+BUPNhWcQEq1sl50rSMi
 86eC/tzrj1jYlTU6oy4JrHXvh3C4D3ITs4qYLahjbiUgjbdW4A0lfxUvvZg45ga2RFfkLY2xN
 yew+U0rG//9Lu2lgx7b6XAYHew3Hm5f88VoQqtKBV0UdlE5Cm+kxfk651j9IGBRsfNwZOkJw5
 WH8evgftyGsWaf/bqNabe++xFQ1Ai+SnzaxHfvbgTM8XY1QBt/CKqWNvs3y+E8tBXQTzoTNjB
 P1En1K66lOfdYRwBca7da8SZvWcPZ9YZahjuPIgx2Dio8DNOzqv1D2/saPNQFdb4rTkvzgTcR
 aMXHv517CNb+/cymD3z2u2jK5Ijl3CTICbbR7d3mRs7+suJil4ZodWDhsZQakyoGgrg+ZSM52
 9zFJQodeIGOpDSidEG5IkDQTapZacDqRdbVjg6C8ZV9s4ywFIaC3rOdDvnvnhCiTwEU/nL+xh
 ekfq0AbwwM2DDzfYZe/JvhU42pU4mbzG1gNReMBCbYvQPPiUremt4isT7csG8hT3maGSzwfQP
 XTouiYI9fQxeULrrVOwi2EFWWVk+G03gmIG20razS5QSPChWzwD8RI4NQZ2u02alaSnKalBot
 5rvsKTZaL50UKBbWSBg+gngAiLzpL+UUSoafkEplzcBkfBd3oo6OjPHw4wta9ji946yFqlrc5
 TXNNqSxHQXR+lHVPNCSsoCGXDUVy08oWIfH8G8rgsIFyhilV6tIajkU8v9cszURN0gpMklEl9
 5rMw3k9TKArd5xmTEfAs3qpXe+iZqx2gu0heDiJiR5gZtbS5hp1UMM9nez5sGLj1B/FsQmew+
 2HV6ojRYdv2PxSRTOGnVWJe0end31hnAyTXgduw9F0kwJfzAr8vNqZzAzcA8EMVIHsjpJdqoG
 JKk9BbrBKkpdAZgNrXpr+CzTOl2w2iaKqcNKQEG+4GzOYZlW+yp6btYpCPcXzlskAKwH2YdUd
 5xoPOPG5wVouI8=
X-Mailman-Approved-At: Mon, 10 Jan 2022 13:24:14 +0000
Subject: [Intel-gfx] i915 hangs up every second time in deep suspend
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

My Lenovo Thinkbook 13s-IWL is hanging up every second time when I put
the device into the deep suspend mode.

I put the device into suspend, the display is turning off, but the power
button does not reach the slowly flashing mode. After a while the Laptop
simply reboots.

I was able to work around the crash using the i915.enable_dc = 0 option.
Unfortunately this is to the expense of battery life for sure.

In order to help debuging this issue I would like to submit the
error_state, but since the system is rebooting it is gone as soon as I
get access to it.

I already described the issue here: https://gitlab.freedesktop.org/drm/intel/-/issues/4918

Is there anything I could do to help solving this issue?
Best Regards, Flo
