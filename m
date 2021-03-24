Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C81F347252
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 08:23:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5850A6E247;
	Wed, 24 Mar 2021 07:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9DDB6E247
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 07:23:09 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12O7JQq5170670;
 Wed, 24 Mar 2021 07:23:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=km1JZi3v+ll3+ZKGjZuiYQOl7G1lXRQoCgTZZTK6p5I=;
 b=MXhiKpfYAW0k+DKWuk31NvdxLSoWw8QO+W1SjxTn8zkz23w8RHDDFCAxqdbPRnlTsmpK
 izRIq0KgBCqYJWCTOZCAHpJDSLQfvc04kBERocwvXXtSBVPVJJSnS9n7IlZ17ovcHUVQ
 NdVanjFwgMSErhJKC94Dyfw7Sobm+zS1cW0sx+fKyCy9yamAhUMyh8txSlLTuflQed5m
 NCe6N6xIKUosiFtqvZ7HltU68qF8USHliZCM6/rRbNjT5w/GayJyIBO+hVOshAlmAQpK
 9vPem9bSBxsvD6Ooy0b5fbJ5E5nMvMmVA6LYht+vx+f+uVJScK69T5f48I/YchUlHQ4N 2A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 37d90mhmt6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Mar 2021 07:23:04 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12O7KsXW060364;
 Wed, 24 Mar 2021 07:23:02 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 37dtyyfsd7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Mar 2021 07:23:02 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 12O7N0qk029887;
 Wed, 24 Mar 2021 07:23:00 GMT
Received: from mwanda (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 24 Mar 2021 07:23:00 +0000
Date: Wed, 24 Mar 2021 10:22:54 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: ville.syrjala@linux.intel.com
Message-ID: <YFrozlRheXy9ziyK@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9932
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 phishscore=0
 mlxlogscore=999 suspectscore=0 spamscore=0 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103240055
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9932
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 malwarescore=0 mlxscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=999 suspectscore=0 clxscore=1015 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103240055
Subject: [Intel-gfx] [bug report] drm/i915: Fix enabled_planes bitmask
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

The patch 97bc7ffa1b1e: "drm/i915: Fix enabled_planes bitmask" from
Mar 5, 2021, leads to the following Smatch complaint:

    drivers/gpu/drm/i915/display/intel_atomic_plane.c:332 intel_plane_atomi=
c_check_with_state()
    error: we previously assumed 'fb' could be null (see line 324)

drivers/gpu/drm/i915/display/intel_atomic_plane.c
   323	=

   324		if (fb)
                    ^^
The patch adds a check for NULL

   325			new_crtc_state->enabled_planes |=3D BIT(plane->id);
   326	=

   327		/* FIXME pre-g4x don't work like this */
   328		if (new_plane_state->uapi.visible)
   329			new_crtc_state->active_planes |=3D BIT(plane->id);
   330	=

   331		if (new_plane_state->uapi.visible &&
   332		    intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
                                                        ^^^^^^^^^^^^^^^^^^^=
^^^^^
Unchecked deref

   333			new_crtc_state->nv12_planes |=3D BIT(plane->id);
   334	=

   335          if (new_plane_state->uapi.visible &&
   336              fb->format->format =3D=3D DRM_FORMAT_C8)
                    ^^^^^^^^^^
Same.  These are potentially false positives.  I don't know if
"uapi.visible" can be true when ctrc is non-NULL and fb is NULL for
example?  (The point is I read the commit message, but I know pants all
about DRM.  :P)

   337                  new_crtc_state->c8_planes |=3D BIT(plane->id);
   338  =

   339          if (new_plane_state->uapi.visible || old_plane_state->uapi.=
visible)
   340                  new_crtc_state->update_planes |=3D BIT(plane->id);
   341  =

   342          new_crtc_state->data_rate[plane->id] =3D
   343                  intel_plane_data_rate(new_crtc_state, new_plane_sta=
te);
   344  =

   345          return intel_plane_atomic_calc_changes(old_crtc_state, new_=
crtc_state,
   346                                                 old_plane_state, new=
_plane_state);
   347  }

regards,
dan carpenter
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
