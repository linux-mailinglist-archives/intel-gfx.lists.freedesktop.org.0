Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D5E2FE6A2
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 10:46:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 226A56E067;
	Thu, 21 Jan 2021 09:45:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com
 [IPv6:2607:f8b0:4864:20::d2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81A616E067
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 09:45:58 +0000 (UTC)
Received: by mail-io1-xd2d.google.com with SMTP id d81so2787193iof.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 01:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=czK7iTy6TqqmloDetBoy8aERfxylJiJsnFJkI8hfTkA=;
 b=MiwdXsB5rMJpQC/XnHW0K8Jw6H5L9o68Kn16PhcF6fIi48rAfO0kzTbYcHjJUvv5tc
 q/gamBsjI1LP/nefoVE2RDPRboEbwqVxE54LqfbYvY4ujy6MMdCbRpV94ChNLr8ZzHsb
 fEm4RvWiRmUkJPxy05WUZykK0TfVddyKlQNWvVv6Bgrs4fPN3xIfsvBCwLAqPuMu2za2
 eb3JW2jexcDg+G/CJeckQAH9gMKWIV6FGqC1VzJQa/HQ6VZF1BFdILAC/Oj4xtjmXlU9
 Z5eGhj6S0bzsmSvJ66hS26IIllHe0wUL+YVeZaEAvOAImcHf7rrjZEq+z5K5iTniPIqb
 ozFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=czK7iTy6TqqmloDetBoy8aERfxylJiJsnFJkI8hfTkA=;
 b=lr3Yw+s5tSQ/1f/UWcFsqexHdJ8n7LRoHgJVf8Q7V49zBpKEJHenKCgWd/iqrJC7gR
 GnJLupHrNPo7f2Q3xCSIUiPFUHOvVDRAMdBIqcQBdwfV4/ptqozbCkowYvAosG7K/g+t
 CwsJnLzC60HQQZadcuugxCnJCt6fxEWgiRJMpvwDCLdZIQVEUyb3PnoRwhRsyqRh+mmP
 1XfscGrtgaeHdfBNfz34W462OUleBycXyld8QQo7RRbf1gHGVeE9AC6zf/dXGWBMMkD1
 X0AuIJroXmLy3nODOJ+/06QdGjltVGHMmH2VeXL18VHdDYGNA7CXQ3dkOgYfEGm9tfyt
 qtNA==
X-Gm-Message-State: AOAM531CMMFSlLSWgzcgoc9VErtcTQ5hOeBsG9+6u8xP+4Ww8xeyHCVi
 jl5POTTMRf7MsXl4lzGaAfJTBZ1JWdjqa4LmJUEEfpXO
X-Google-Smtp-Source: ABdhPJzT/dNJW0c7lV+0eIVeufyg1tXpQ2ADbQ8ZBDA3nc1WHYRRBabrAIWcQkwVRRXdDJ935VMSn45zfZRf2Oh97eI=
X-Received: by 2002:a05:6e02:194a:: with SMTP id
 x10mr11221110ilu.165.1611222357684; 
 Thu, 21 Jan 2021 01:45:57 -0800 (PST)
MIME-Version: 1.0
From: Clemens Eisserer <linuxhippy@gmail.com>
Date: Thu, 21 Jan 2021 10:45:46 +0100
Message-ID: <CAFvQSYRMhrgenAR4co_6YqwUZ6qHRHvo0Jb4Yqj4Zpj3JvaDBw@mail.gmail.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Subject: [Intel-gfx] opengl version supported for compat contexts
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
Content-Type: multipart/mixed; boundary="===============1413086095=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1413086095==
Content-Type: multipart/alternative; boundary="00000000000048b63805b965f070"

--00000000000048b63805b965f070
Content-Type: text/plain; charset="UTF-8"

Hi,

Could somebody please let me know the opengl version supported by the
gallium-3d driver when requesting a compat profile?
I only own too old hardware and had to discover the "classic" driver it is
still at < OpenGL-4.4 for compact contexts.

Thanks & best regards, Clemens

--00000000000048b63805b965f070
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Could somebody please le=
t me know the opengl version supported by the gallium-3d driver when reques=
ting a compat profile?</div><div>I only own too old hardware and had to dis=
cover the &quot;classic&quot; driver it is still at &lt; OpenGL-4.4 for com=
pact contexts.<br></div><div><br></div><div>Thanks &amp; best regards, Clem=
ens<br></div></div>

--00000000000048b63805b965f070--

--===============1413086095==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1413086095==--
