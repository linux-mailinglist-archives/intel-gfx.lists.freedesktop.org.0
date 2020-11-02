Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD522A2B39
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 14:09:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47FE06E50E;
	Mon,  2 Nov 2020 13:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC0146E50E
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 13:09:04 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0A2D3vHk096304;
 Mon, 2 Nov 2020 13:08:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=XZ3K+BAZaN4Gb1xlpxJpEXY5kzg1SJ7WSJ80Eurv2gM=;
 b=SjI0d8ZpNLJKDhOX5H6XOQBSGq7tFG6uDwJVwpQv3G6ryVtHzOkpw3UtHoYL7pC6M2Dr
 BFS7mxSgzzqRPlpfjbxj9pgyQ6oC1i+quhTfmpLTTzqXQG18UMmiX+sTZGWlYKfwzIrx
 k904jJxBlDfbxkbiVIgU5L9EH0AjF6w9jeIUFpUPaXnM7XReFGwkraHUQdXUsUgCe8fZ
 ggnSqL64aqgmDqB0OBTsiSey0qgndGFCYefM5jJNHXA1Ay+5CIw9egw5+2D/TGa6LIHP
 dsDRq4QjBy6oHtoJnT1VuS1enTYQxb1qxBv5Pvaaub+nksGveY8v4XynH0iH4A4yG3qZ eA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 34hhb1uqxg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 02 Nov 2020 13:08:01 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0A2D5e81012823;
 Mon, 2 Nov 2020 13:08:00 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 34hvrtupv2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Nov 2020 13:08:00 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0A2D7xxC011786;
 Mon, 2 Nov 2020 13:07:59 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 02 Nov 2020 05:07:46 -0800
Date: Mon, 2 Nov 2020 16:07:36 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: ville.syrjala@linux.intel.com
Message-ID: <20201102130736.GA31073@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9792
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 mlxscore=0
 malwarescore=0 mlxlogscore=999 suspectscore=3 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011020103
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9792
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 suspectscore=3
 clxscore=1015 mlxlogscore=999 impostorscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011020103
Subject: [Intel-gfx] [bug report] drm/i915: Replace some gamma_mode ifs with
 switches
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

Hello Ville Syrj=E4l=E4,

This is a semi-automatic email about new static checker warnings.

The patch 7852ddd5d60a: "drm/i915: Replace some gamma_mode ifs with =

switches" from Sep 25, 2020, leads to the following Smatch complaint:

    drivers/gpu/drm/i915/display/intel_color.c:765 ivb_load_luts()
    error: we previously assumed 'gamma_lut' could be null (see line 755)

drivers/gpu/drm/i915/display/intel_color.c
   754		const struct drm_property_blob *degamma_lut =3D crtc_state->hw.dega=
mma_lut;
   755		const struct drm_property_blob *blob =3D gamma_lut ?: degamma_lut;
                                                       ^^^^^^^^^^^^
Check for NULL

   756	=

   757		switch (crtc_state->gamma_mode) {
   758		case GAMMA_MODE_MODE_8BIT:
   759			ilk_load_lut_8(crtc, blob);
   760			break;
   761		case GAMMA_MODE_MODE_SPLIT:
   762			ivb_load_lut_10(crtc, degamma_lut, PAL_PREC_SPLIT_MODE |
   763					PAL_PREC_INDEX_VALUE(0));
   764			ivb_load_lut_ext_max(crtc_state);
   765			ivb_load_lut_10(crtc, gamma_lut, PAL_PREC_SPLIT_MODE |
                                              ^^^^^^^^^
Unchecked dereference.  Possibly pass "blob" here?

   766					PAL_PREC_INDEX_VALUE(512));
   767			break;

regards,
dan carpenter
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
