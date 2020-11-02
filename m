Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9D52A2B3A
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 14:09:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 968D189295;
	Mon,  2 Nov 2020 13:09:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28B16882A9
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 13:09:19 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0A2D3X2j096139;
 Mon, 2 Nov 2020 13:09:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=5Pw8Z/wpuDCo8/X6I6kRzV02JSHYXuJMwEBukZKnVSY=;
 b=HfEjC+8AhpZfMf+eSbxEmeDE2BMWNVoU721sJzX6vAkXq+VND8glN/36yud62/RZVrua
 i1CB9bzxYHRWYSGuIpFmW7a+DJYH4P6FNYqV5ZeYsY78cvj/LyhcV+cOtrUfYDvdw4PL
 9blz84Da1CYKCREnYEZIH3VkIlY/MzkPyRQKVtjE3O9pEdn55401yQF50OYRJ6cIRsIX
 BxfTz6SO5HpUE7L3x119RNt1s9wH93+9ecAGaqUactj9NvHjBCDJpCDRWXCbD4tjFjGY
 hkt617fIsu0jDMzMW/aXbJ+brIscqFUSzQsh04OPcvBWkYR0uD/6FR0Ge4bQrQ6IhtlB FQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 34hhb1ur4b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 02 Nov 2020 13:09:16 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0A2D5f0L012864;
 Mon, 2 Nov 2020 13:09:15 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 34hvrtur2h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Nov 2020 13:09:15 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0A2D9DpP018358;
 Mon, 2 Nov 2020 13:09:14 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 02 Nov 2020 05:08:52 -0800
Date: Mon, 2 Nov 2020 16:08:45 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: ville.syrjala@linux.intel.com
Message-ID: <20201102130845.GW18329@kadam>
References: <20201102130736.GA31073@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201102130736.GA31073@mwanda>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9792
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 mlxscore=0
 malwarescore=0 mlxlogscore=999 suspectscore=1 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011020103
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9792
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 suspectscore=1
 clxscore=1015 mlxlogscore=999 impostorscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011020103
Subject: Re: [Intel-gfx] [bug report] drm/i915: Replace some gamma_mode ifs
 with switches
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Similar bug:

drivers/gpu/drm/i915/display/intel_color.c:794 bdw_load_luts() error: we pr=
eviously assumed 'gamma_lut' could be null (see line 784)

regards,
dan carpenter

On Mon, Nov 02, 2020 at 04:07:36PM +0300, Dan Carpenter wrote:
> Hello Ville Syrj=E4l=E4,
> =

> This is a semi-automatic email about new static checker warnings.
> =

> The patch 7852ddd5d60a: "drm/i915: Replace some gamma_mode ifs with =

> switches" from Sep 25, 2020, leads to the following Smatch complaint:
> =

>     drivers/gpu/drm/i915/display/intel_color.c:765 ivb_load_luts()
>     error: we previously assumed 'gamma_lut' could be null (see line 755)
> =

> drivers/gpu/drm/i915/display/intel_color.c
>    754		const struct drm_property_blob *degamma_lut =3D crtc_state->hw.de=
gamma_lut;
>    755		const struct drm_property_blob *blob =3D gamma_lut ?: degamma_lut;
>                                                        ^^^^^^^^^^^^
> Check for NULL
> =

>    756	=

>    757		switch (crtc_state->gamma_mode) {
>    758		case GAMMA_MODE_MODE_8BIT:
>    759			ilk_load_lut_8(crtc, blob);
>    760			break;
>    761		case GAMMA_MODE_MODE_SPLIT:
>    762			ivb_load_lut_10(crtc, degamma_lut, PAL_PREC_SPLIT_MODE |
>    763					PAL_PREC_INDEX_VALUE(0));
>    764			ivb_load_lut_ext_max(crtc_state);
>    765			ivb_load_lut_10(crtc, gamma_lut, PAL_PREC_SPLIT_MODE |
>                                               ^^^^^^^^^
> Unchecked dereference.  Possibly pass "blob" here?
> =

>    766					PAL_PREC_INDEX_VALUE(512));
>    767			break;
> =

> regards,
> dan carpenter
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
