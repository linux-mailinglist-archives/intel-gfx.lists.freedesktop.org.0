Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BA71927B5
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 13:05:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B6E76E838;
	Wed, 25 Mar 2020 12:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com
 [IPv6:2607:f8b0:4864:20::641])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9B9E6E57E
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 05:59:31 +0000 (UTC)
Received: by mail-pl1-x641.google.com with SMTP id b9so379721pls.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 22:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to;
 bh=zktZjBwHnWaS2v/0SKxwNs3QRxnVYE5oDwyPdu5cvzY=;
 b=ItA6ixDhd9s0SmCe/FcCp3TxBJuBujxs/Ns+T2jtBnHrUcoxYoVJUCqHSeu2KiEKWM
 eOuVVa6W7S5mQIyV9yc+7byuAUWSC7PoJpM8xVv7NoIWUVTzU0VjwaWh41sVM+EVi/6j
 /O+hJykTGiniVuPAIaKHy9gte1Q+8kXjOfHFv1hWD+28lzNXL0efxx1dNwMA6fB1kIMh
 zlB8fi63XVtUL/X3Xe/qoUnmk3dXVqdaklLdpgie/NIGQv4ktZI1l6mwgRmsJt4dQzjc
 jxQsXwLkvHOizkSpiqy9zRyvE77ACoB4GfANrfqJWL3o3WHQhR1QcPo8WDRTxmvZ493P
 x1KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to;
 bh=zktZjBwHnWaS2v/0SKxwNs3QRxnVYE5oDwyPdu5cvzY=;
 b=HrKwZmRo+poW64rDwaPunk9mhSdTGVp2JrVbHwQXo5AEh8Lb1mewj5m0QccJifnn6c
 FI/ov9o3YlKRVg7n9ICNmCspa0zMQqj/WOSwSSNXB0SBAl//jqNV2IcTqZ/tqw3YaJNj
 roj9xKLfW90EQNrehccf8U6TS5ejfDBDsBr/va6f10vhZwJV19rZlMDrzhy5YyphJxrN
 0s4vum6Tx+sXJGI/EI+r/KX4wfnmUTFVgMBXYrlJq9WBrONZe7p7byC2FVDXicOApms8
 OZo7ExKgvWyRd2sM7fou/JFS0DldeeBJ6WGjcCrgg8KCwSzrOIPOK15W/fQX3J/T/GC1
 gE4Q==
X-Gm-Message-State: ANhLgQ1F+mzFcaDFQWSokOHVX0TRiNJWORkpNWWPIPCsZu5JeCavCnYg
 Nzukxm1JxiV3FDsjMcCXKhpKRuO0GyM=
X-Google-Smtp-Source: ADFU+vuz+iwx5ZidJHyTZFJ4wGWhAExoCBL/cvdbVyD7RZSHijiY9e6TWpiA5wdLrHt3s7jXK50CaQ==
X-Received: by 2002:a17:90a:ba93:: with SMTP id
 t19mr1799767pjr.67.1585115970995; 
 Tue, 24 Mar 2020 22:59:30 -0700 (PDT)
Received: from [10.101.46.193] (61-220-137-37.HINET-IP.hinet.net.
 [61.220.137.37])
 by smtp.gmail.com with ESMTPSA id i23sm17526972pfq.157.2020.03.24.22.59.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Mar 2020 22:59:29 -0700 (PDT)
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200324201429.29153-1-jose.souza@intel.com>
From: You-Sheng Yang <vicamo@gmail.com>
Autocrypt: addr=vicamo@gmail.com; keydata=
 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
 /7MpmAIm
Message-ID: <a2809741-98e0-ffa9-b3b4-10218ab8f8e4@gmail.com>
Date: Wed, 25 Mar 2020 13:59:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200324201429.29153-1-jose.souza@intel.com>
X-Mailman-Approved-At: Wed, 25 Mar 2020 12:05:30 +0000
Subject: Re: [Intel-gfx] [PATCH v3 1/6] drm/i915/tc/tgl: Implement TCCOLD
 sequences
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: multipart/mixed; boundary="===============0384200365=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0384200365==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="D9adDOQEdFdAYyPhzgnkM2oKl1cJH66R3"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--D9adDOQEdFdAYyPhzgnkM2oKl1cJH66R3
Content-Type: multipart/mixed; boundary="FHtjdWBb0X8QdnRQ0dP421VN1OFwRejGe"

--FHtjdWBb0X8QdnRQ0dP421VN1OFwRejGe
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Tested-by: You-Sheng Yang <vicamo.yang@canonical.com>


--FHtjdWBb0X8QdnRQ0dP421VN1OFwRejGe--

--D9adDOQEdFdAYyPhzgnkM2oKl1cJH66R3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEVhtdp+wXuXuqVL95S6BJ+2O0nE8FAl568zYACgkQS6BJ+2O0
nE+GcAgA6xRn9NgRg/X9uJ0zz0p+pr4kmP68C5tG/Jka5lYXjVw9+e9BxFehh0ze
lS4NU6YMNmvhgfz0u6ml5c6btvyV5em2zC6JQhYvrPt7fx/sUArmIN+KCRELEaBe
5NY7l1LD9xHcgvJNtnCh02ROV3OlzaRvsnAxN8LSkTkDA5EAHWjbBt1ql94b8kms
NgS//OD9+HvT43buTCgZ2ftJf6vk8gJlGo3Eo8OYENfEvOTsdut1KN4l47/wAB1S
f0GIbaxZrx1XT0tu6Q8G0pYPzmiQS/fx4S8cPQmejZn+H5KhtUvHzWL/yVnl4rgs
QpCt5Gfy2IkZeEVspyP/XbnjLPdH/w==
=guDb
-----END PGP SIGNATURE-----

--D9adDOQEdFdAYyPhzgnkM2oKl1cJH66R3--

--===============0384200365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0384200365==--
