Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B583BC50E
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 05:24:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5B4C89956;
	Tue,  6 Jul 2021 03:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com
 [IPv6:2607:f8b0:4864:20::b2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDB8389956
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jul 2021 03:24:34 +0000 (UTC)
Received: by mail-yb1-xb2f.google.com with SMTP id b13so32137106ybk.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 05 Jul 2021 20:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Ji6lXGuoP7HameM3ebKucNbDqX+ADatotTR0zt54z5M=;
 b=RbKIcIAfJlvIYtkm6NA0OQH5HMPDtPF0hG+avdCoLmgb3jhVyu5RxI0kBNEMURnfGp
 9J4tES3P3pBIAU46x9Xn6PpMwmMcZ9+VoLjXOmfFB0ZNLdCJ1MpKEaiTFgTDPbz0JB79
 oVUUzKJAwlw524qb5Zdw1suFAcdRXnpBzwMauDh4g9dBH1L2ZF6lbVs2dGYc2mSQ+SWq
 X3tw3FGHyBcwipBrC9j1LlXF2V9YaG+9JmzCl7XvWqAlqVXxUE/M21DHHbObPBlpeZQX
 10LUjArCc2tbkD1uM8EbDEcFG47XnBtRCLuTMHnnr3VvQvk+0BbB8BAx9nRjmVUFKmoL
 aIfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Ji6lXGuoP7HameM3ebKucNbDqX+ADatotTR0zt54z5M=;
 b=W40eMSHrgxw+jHsbu7Z45bktqw/bqZNRPhU5siL8RhKTqUHpTNHYbNRJkXV2PzRSbn
 AOOwfI5clONDQlHsNPgFh8kSQhynTmPesRQuk15hoy4YXDHcH/dhV4fVa22BkL0F+b26
 uvm7i9qAFLBn8+zg+t4FAHX2PIhNDroHy4WT6HAn5ICyYmA1RwfbxsfKXdrTYwjLcgGz
 rRD15A46KqoDnC6rvxlNrf4lYm5cHpSMl2JvYHMlsUnMmf/VdF5d7KzR4b/79rE8G25h
 5HnC7ESwfFSXcpg/am/3z3HzydJeOzevezs9dqRIXJcPYfdNX3tvi6TuKQMBJM5xaUQe
 bI7A==
X-Gm-Message-State: AOAM531et+z4pMmyE4iexl1CCggp2WRDVe6cRBxwD0GYSBzilrh0w6Jr
 0qGYBkc5I3ctSD1Uy1Byub2ATdmFjAhAZhO6G1Na0SoR
X-Google-Smtp-Source: ABdhPJyuvAC7QTRbQMjS0ocJxJPGVQgs3oIukRcZpkNZuJqNlwogwCq3WsSEZoohhkXTj/sIXCKBI6jwYjN45ICBOuE=
X-Received: by 2002:a25:8151:: with SMTP id j17mr22089530ybm.321.1625541873696; 
 Mon, 05 Jul 2021 20:24:33 -0700 (PDT)
MIME-Version: 1.0
From: ri cha <hentaiwushuang@gmail.com>
Date: Tue, 6 Jul 2021 11:24:19 +0800
Message-ID: <CACCqD2LMGhOKYD92LUJ0=1bOk-qnEPtE29APV7PKpE6G4Kzc=g@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] Are there any plans to write SR-IOV drivers for Intel
 XE graphics cards?
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
Content-Type: multipart/mixed; boundary="===============0726351038=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0726351038==
Content-Type: multipart/alternative; boundary="000000000000f303f505c66bf577"

--000000000000f303f505c66bf577
Content-Type: text/plain; charset="UTF-8"

The customer service informed me that the Intel XE graphics card supports
SR-IOV, which is used to replace the removed GVT. But the SR-IOV driver of
Intel XE graphics card does not appear in the Linux kernel. Is there any
plan to write the SR-IOV driver?

--000000000000f303f505c66bf577
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">The customer service informed me that the Intel XE graphi=
cs card supports SR-IOV, which is used to replace the removed GVT.  But the=
 SR-IOV driver of Intel XE graphics card does not appear in the Linux kerne=
l. Is there any plan to write the SR-IOV driver?</div>

--000000000000f303f505c66bf577--

--===============0726351038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0726351038==--
