Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 746551326FE
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 14:04:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD8D36E060;
	Tue,  7 Jan 2020 13:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 138B36E060
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2020 13:04:26 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 007D3dUU090810;
 Tue, 7 Jan 2020 13:04:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=FeczGQy45IdsYx63TxCxMvsSPqaWKGZtsFi7YiYLw4U=;
 b=YvakGZru1kR1Y0VSR6JiAXqcxTQezkVDSAFM/SUbs6+UOJrwdaH2ryHY83gEfCamPqa7
 ArURGv0/ABIc6uXNMN2g3wHyngeXZF2xDS+ub2Xz7Ey6cWTCB2e4ocpvtFKlvbpB7bpj
 /qWlAmAgz7Cb4qJD2FnKdKegkFD8oY/7S6VMWc47FEf31pPrEyFCuKr10GWfYeSJJ/+d
 wN7Zr7vKadBPLbE+jCG4C26uk55Ql1Bw/M2AAyfkyzIB9Sj0tiGJmITvs+IxFqkifpwr
 JjTOD65Vs4DbCN04XSxPdFx0/iZe6hCnx0sbrgxaBeS0WnNyHgA3GXePSy8Nl/GvJZ7b og== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2xajnpwaun-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 Jan 2020 13:04:18 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 007D4BJF163528;
 Tue, 7 Jan 2020 13:04:18 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2xcqbe5gv3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 Jan 2020 13:04:17 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 007D3aU8009546;
 Tue, 7 Jan 2020 13:03:36 GMT
Received: from kili.mountain (/129.205.23.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 07 Jan 2020 05:03:35 -0800
Date: Tue, 7 Jan 2020 16:03:22 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200107130322.gdk5b6jurifr26c2@kili.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: NeoMutt/20170113 (1.7.2)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9492
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=903
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001070109
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9492
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=963 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001070109
Subject: [Intel-gfx] [PATCH] drm/i915: fix an error code in
 intel_modeset_all_tiles()
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
Cc: David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There is a cut and paste bug so we return the wrong error code.

Fixes: a603f5bd1691 ("drm/i915/dp: Make sure all tiled connectors get added to the state with full modeset")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index da5266e76738..a96bee699a5e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14424,7 +14424,7 @@ intel_modeset_all_tiles(struct intel_atomic_state *state, int tile_grp_id)
 		crtc_state = drm_atomic_get_crtc_state(&state->base,
 						       conn_state->crtc);
 		if (IS_ERR(crtc_state)) {
-			ret = PTR_ERR(conn_state);
+			ret = PTR_ERR(crtc_state);
 			break;
 		}
 		crtc_state->mode_changed = true;
-- 
2.11.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
