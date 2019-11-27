Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C7E10C097
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 00:27:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A7776E5D1;
	Wed, 27 Nov 2019 23:26:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BC1889590
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 21:07:34 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id y11so25295970wrt.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 13:07:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=coWiwVZDe/0ZH60zoRJ9JqxM4QyHRi3Sl7aJhUkMp8U=;
 b=BdOBtcEBv+PaeqF2JHr6GaDt5oygmBmKkWBjWTVVXQ5sCAe1mtrgdLxgcaPyMWaO5i
 SklSR8za9x0/ZHMCUZtkig9nplzZGpj1Ujr7eB3gXQ8il2m7riGFZyhg8V0qa4hrOOwD
 RmRkYCe2I5q41B8tk9qoTFa8ZBoyrJU105kVLGOkHBYJh0TfQkcl99SxrEh9UH8CIZxR
 MvCXZReA7NPpr4zBVeVvLj4axbzU8l8SkO+GC5bbdZPhO8T5g6WC2Ve49Ouo4NHmrKg3
 InQSQJvp4n9SVTbg9kzzNOMQnug0bsc3bLyxq6jtJxPF2nhphr4W28m9CkcAMhDDdDFO
 LxMA==
X-Gm-Message-State: APjAAAVi2Wruq2U5MtUjyQ1C5nDMjLnba9kQrnwOl6pRUlJ3+6q8N4B5
 uiX+wjGNDZFzbbvCLNFzGn0=
X-Google-Smtp-Source: APXvYqwCcf6lrfbyxf0FnaoxbFMmjjmtYONAFgeiZdoyDOaLZ8zjzPJZjPf4gC1dEECK8vqqddkfpg==
X-Received: by 2002:adf:ef49:: with SMTP id c9mr23892307wrp.292.1574888852880; 
 Wed, 27 Nov 2019 13:07:32 -0800 (PST)
Received: from heavensdoor (84-222-110-112.adsl-wholesale.clienti.tiscali.it.
 [84.222.110.112])
 by smtp.gmail.com with ESMTPSA id z6sm21454590wro.18.2019.11.27.13.07.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 13:07:32 -0800 (PST)
Date: Wed, 27 Nov 2019 22:07:27 +0100
From: Alessio Turchi <alessio.turchi@gmail.com>
To: jon.bloomfield@intel.com
Message-ID: <20191127220727.580c9cdb@heavensdoor>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 27 Nov 2019 23:26:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=coWiwVZDe/0ZH60zoRJ9JqxM4QyHRi3Sl7aJhUkMp8U=;
 b=czKXYSCb2QdX7f99mQr7gxUYP/eTv3WVBp7x5c0Vmtf/PeyOVfja9M7Bj67yOZa1QK
 LBB44gmJcyK3FXflzcXvfB1d0t0IG32YJWRg+Ehs2v2p4qurrYg8SYa2gRUf90oIDEwu
 L5dc9LiUK1x4QUiH3QJ3f7gsdl9CJR1z6wR8hDre5SJttettY6gIjwhp0xnTsClwPiZS
 X9D8GEhqiTxDLjSAJKkk/iDzRTSSO3bYP1AJGa+tc7j3f+mNy9W4xo/+q4VERsQc/gJ8
 6hxRYq4p57rCIeAuJG1gxcI6iHIT/WI0wY/8uWvo+PGbZwXDutU4+pEjPVEivWnnweeH
 7z5A==
Subject: [Intel-gfx] Kernel >=5.3.11 hangs intel GPU and 5.4.0 freezes
 completely
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBqdXN0IGZpbGVkIGEgYnVnIG9uIHRoZSBrZXJuZWwgYnVnemlsbGEgYWJvdXQgdGhlIGZhY3Qg
dGhhdCBjb21taXQKNzdmYzkxMDBmYzU3NjhjYTAxY2EyZGQyY2M1YTUxNWE0NzIzYTU4YSwgd2hp
Y2ggeW91IGF1dGhvcmVkLCBoYW5ncyB0aGUKaW50ZWwgZ3B1LgpJIGp1c3QgZGlzY292ZXJlZCB0
aGF0IHRoaXMgZG9lc24ndCBoYXBwZW4gYW55bW9yZSB1bmRlciA1LjQuMCwgaW5zdGVhZAp0aGlz
IGtlcm5lbCBqdXN0IGZyZWV6ZSBjb21wbGV0ZWx5IHRoZSBub3RlYm9vay4KCllvdSBjYW4gZmlu
ZCBtb3JlIGluZm8gaGVyZToKaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNn
aT9pZD0yMDU1NDUKaHR0cHM6Ly9idWdzLmdlbnRvby5vcmcvNzAwNzgyCmh0dHBzOi8vZm9ydW1z
LmdlbnRvby5vcmcvdmlld3RvcGljLXAtODM5MjkxMC5odG1sIzgzOTI5MTAKCkknbSB3cml0aW5n
IHlvdSBiZWNhdXNlIEkgd2FzIHN1Z2dlc3RlZCB0byB3cml0ZSBkaXJlY3RseSB0byB5b3UuCkNv
dWxkIHlvdSBwbGVhc2UgbG9vayBpbnRvIHRoaXM/CgpUaGFua3MsCkFsZXNzaW8gVHVyY2hpCgot
LSAKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KQWxlc3NpbyBUdXJjaGksIFBoLkQuCklOQUYgLSBPc3NlcnZhdG9y
aW8gQXN0cm9maXNpY28gZGkgQXJjZXRyaQpMYXJnbyBFbnJpY28gRmVybWkgNSwgNTAxMjUgRmly
ZW56ZSwgSXRhbHkKUGhvbmU6ICgrMzkpMDU1Mjc1MjMzMQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
