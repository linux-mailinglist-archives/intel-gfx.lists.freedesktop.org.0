Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DEE2E3558
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Dec 2020 10:14:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF3B889A57;
	Mon, 28 Dec 2020 09:14:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sonic304-23.consmr.mail.gq1.yahoo.com
 (sonic304-23.consmr.mail.gq1.yahoo.com [98.137.68.204])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EEFA89A57
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Dec 2020 09:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1609146884; bh=5a1L22092HqdLY50I1f5KWTBDpqYGObFL8lJfQ7t5nE=;
 h=Date:From:To:Subject:References:From:Subject;
 b=cSF3H96jDPxZ9RIMD5Tcu3VLwJkMEl7Oeur5P/9ymB0cJN2BfioUv8stEfoWRgyayIV7QicbNVdi721PuJmUDqwM6ne5TvJlL7GnOsEdJHrboXAVeHMEy1dd61UvZ4BQtAXQ0yAAO3QgddRNuH20FHB8gBCMg6H0rHqfDiFZYF2qXhyfLwGOrX4LZtdG+5YbLX60iraXS4rFZ+nPa3emStue39hn5xzcJyuQ7uXaoMAjk5wYFxu4nkvBoOlv2Jzp22GPVHh2e+3vYpVGxh4JjiZ0PP/FHItiVM9o3E/YLFPC2Rb6p42LufeZ03ZeydBiEWa4pXWu7h/3RsfgaESTIg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1609146884; bh=8z7p7j//v3CS5XCg8F4x4+3L5n0teFBGnp9+7dUCmOB=;
 h=Date:From:To:Subject:From:Subject;
 b=QWEHoclaWCx3pDg+s0UZ+EIJv7fm8LGL6ylwDcHgMnzI2CGkCiODZqqZYyGqsKn32EQtWM1unNs+A8fxP8n97Y8oKy3scC/pILc0yHSHugfBRq3e+qcGrOYv2JvWxokjWXrXH7Xx6dsa432jNi8MUI6LjtZUxQryHtkw87R9czNpiO/Q/oBv9aIU+ntCMG8njoNdXm9vmpiGcfpRX5TgUrdrErzXcqJq10MNm3vYBKQms48U61+T6J3FJj9VaDgIakGWOVtiySyQ5a9UXNUxjgJEMz+4yJBoiRxx3GiUQpV2iAEegi1bDy9sL9NHfpFmIQiOFqx74HSkfKNKO3UOQg==
X-YMail-OSG: hx7iSt0VM1mjdGNOojPQe4FEKGo8chYUUXZfHhn0t7vqt..u9MUfSZwD7.QQ1bH
 hiqXKCBRDyae9hBV6z0N2iwYRQ6NuktUScaHvnNltKKBQCd4nFBqoxjAe9YH0DE49jITaEDovUVY
 e3s8eS9y.2QbbiYJCs5xc0ZsTajl_aOUllrnyOai7O1bo9B6rWiyKT3IjM3kzhuVpIUnTCKYbG6e
 ihrlML3QpsYE0TyFtm09SPfsF0gwu4AUs9S5316AkpJZksNO8E9snW.hWcN667Xq3FRJ.QclITJR
 2t4iqBh4PJ5oGC.jkkhvncGY6Zal9Jsw9Z9iQs1cdIWHy_xLWKTbEKK4vH7q0sulMsTEalO2MfLF
 z.Tt_FdMpJqmIlTqd6qr.NvH7RsqG57tZ4kuEMZbTyu1tHOBQhR9xINy3SGS0arTeLrio_F2KVzp
 pMlGqun_pMHd_JvgWJAgTzY2MV.2NqCNlGjxU_kX0uQcQ16ZcWs6Nhn_XpWXFElpP_tDtP56r7NK
 j5mwk5Aqea7tw_DCr6thJ5nH_RpIx6TATdFFr5ii07ra_xmsIHD.bnSJsjVn570_1TIZmF9OARfk
 GrlPIiNG_FGTC7EMEUcvl3GMSsAbXH7gDITq_q0FD4WUtBWnKL5dNmDjfOuc240Zre65bY1FjvtS
 dPDjuiGwXslje0rE_FrIXnN31G9kkLrcnzOQJOuTrcgLDQcbS4i6dukPtTro.MnYL0kGXhb3cTjn
 v8OiBxFCJCmOycXIR_.K3KHogG0FIW1KzELYsC6oh7_gupejUYI_kzn3.t85CMCGYJuj9fuSO6d6
 qn7RxkxdFgepGPPpFkHb0SLuf.8vlQKPwpEMBJhz1F5ZvTlHKYJj0hrg8hSYGDs91we01mcsv6Cy
 ZPSOSGFuDm60lQMaZvpUOnDvTYqDWK8KHBDssZQ.9bSHUx5XUF26KbbuBHRH0Eft0GSYk5gXZUpl
 CbM6hozqQ7oulIbJH5NVrt8FnoL1k7KMf86n7OcMyWjOheqvlbrwYITyLsF2SdlzRkC_2J_tjpRB
 .EELiyoO_gVwna0XQA2OCC5k99iMA4IImRGtdgP.Ye_DBqkC9m_5g776Q.6D_c5JEfWvDzh2Y0an
 1.dqBn0NGTAN56z10VbLAZ952Bb5lGF7n_FJ6arcq9vTaRR4NGH943rtnoYkKRVzFsL25vcd5tUX
 LeBKQXCJIYaygTGqWCdRbw6QmEGEUEleqCBhnwGej6eYWl2o5kMtaXTIqSD6Ya1_o4rMsflGLo8r
 gHdH0o_oBV9oOhmaNW.Sikaij4wQbEs7eam2ayTl7VKqSRo2ui7nb7JLwtI0VB5M3pi7OuBQYfk7
 vODdzDDWp2A3YRBNPeW1MOkwWkAGg6HbegqW7z8fXYMvtB2Z1UL8KBGUShIBQtwL3BIW7SEKwiWp
 VKPj6Okq97TJ3uDHWWFZBZpqNH4cQVWIB2v1v5swNwsHOCmZYHrUqjW6WVwe1o27XdzHoHs1Zq7K
 ul2vxqSUPDBBXbeAgXePUXYRT9iohTpZo2igk9d6LRXC4lH1qhgfUjDf.DyJcyRu5Wo4WAoUXGh_
 d2aMdxZF7yLfAKHB4pCfhvFWJtKqtvQ3fwvyn2NbJxz0kuaIyJsp5uEwQ5GuVreDeBe5LSH5Azc4
 l2jfRnD1Ckq3_eZFqMxUykw1c2YW5EMg8kwKMA38l.4kCSGcBMML5C.OXu36RTc0RXeHsa_ZgZYF
 YXuyOINGW2Npzm8.dRacr71p9p92bMTS2FZf6tYsdcPKD1PMq.zSR.JrGApdyFwV5tA_CYMh1Xod
 A.8o6qhwWss_vvfFtKePR88KTWz2DUIdGYN_SoRYHZ8NbOPImczKf0wJrDznMZz03B.NfdNklHrV
 hk1R2RJUXvUdrAhEU5cf3TKaSQfC.eQzIK0AbtzqwUDBBDXvt6Rs177ueaBHqKo2Y6KJdiaMv57w
 x.UYSE2gCum1GCmawygjakghzbiqp6MQh1Zp.Wduxki1.gMCCAUGcYxhp0.iGBefRz2EcnEIqWGn
 xhCObhCCGzbd2o6ZBBKMatLV4aBGYUCzBCb_2EwOYfqDqXXZxLy5ppPuxVwMWzVJ.564F6UZTXv1
 8UtSMvw1Mxl_AlLxxZOsVv2tVeUUiX1Y6ywnb3c.46ZnKhW2p9ltjQ9oKXaV2XqAkSa1KcbbM_VF
 qGK_BhLZi98wyPW_X1JO5utGYxT19c8h69abclPA7HKdM9bbcM0iGuFu.TCVBTXn3xnWxclvUjeG
 5Yv_7HStDAGMTKxwn3RIcbFqMZlYKs8W4h9t89ySgTBpIYnyk.tLx5pREAqU__VTaTsXy99N6viG
 oUTlj9JLLa26CgnvdIfi7n6EDJtD0r6ADwWtXfSinTqiN0VG.wDZHcJlPzc.oTefj0HI45CqdkQc
 OOfzEW6hs9GegouZzDfbv_9Pc71NGkk9kzn0KGUDY2MUMwWyDUKyC8o.oGEXPrg--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.gq1.yahoo.com with HTTP; Mon, 28 Dec 2020 09:14:44 +0000
Date: Mon, 28 Dec 2020 09:14:43 +0000 (UTC)
From: Jiun <jiunning@yahoo.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <1821625912.3722216.1609146883430@mail.yahoo.com>
MIME-Version: 1.0
References: <1821625912.3722216.1609146883430.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.17278 YMailNorrin Mozilla/5.0 (X11; Ubuntu;
 Linux x86_64; rv:84.0) Gecko/20100101 Firefox/84.0
Subject: [Intel-gfx] i915/framebuffer: Is it possible to support frame
 buffer console in two panels with extension mode?
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

Hi Sir,
I am using the new Intel Elkhart Lake SKU1 platform in framebuffer console mode.
Is there any chance to using frame buffer console in two display with extension mode? and in different resolution?

I have tested in Ubuntu 20.04 kernel 5.10.2 with i915.force_probe=4555 boot config, the graphic function is working normally in GUI mode.

Thank you, Jiun
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
