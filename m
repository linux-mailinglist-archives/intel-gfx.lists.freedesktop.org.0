Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BF221BC49
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 19:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68F886ECBC;
	Fri, 10 Jul 2020 17:32:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B14886EC55
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 14:11:57 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06AE2haA026034;
 Fri, 10 Jul 2020 14:11:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=ty/FrZjQKJTPJjyny7KJ2OX3VKdCrbXQLiStxD3Xurs=;
 b=P1qcgfk0qmALz5BK5KGNNamZVOahF4bnN5veRTD1bEgDSR/kvB3/PJRKNuFSrTyqYqTN
 5p27+NFb9rENVnhxgSckI+zE2FYHqRdDCu7ugGycd0Yk36C+BQBCCuJclrQ7dXycU13a
 5Feju8d78SbfcxpvnxnJ+XSCxPxGhTu0anEmrnGNsq5fLgshdVMSeTwEH5zxqas2OGKt
 kYt2ty5jQ50+pUp8OmPUN8SrL7oHWc6QKqJbe6h9gvzVGrCgQt4YO15LWF8uDzfWZ0iP
 YNFS4Dh2xVNi2dRaQXFePmWW9hcFoTJhuH+jXSs4+HlZQkGXBR7f3xyoCg59YHJqViHj 9w== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 325y0aqnqc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 10 Jul 2020 14:11:55 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06AE9NmQ080665;
 Fri, 10 Jul 2020 14:11:55 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 325k3jxtfh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 10 Jul 2020 14:11:54 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 06AEBrwk016998;
 Fri, 10 Jul 2020 14:11:53 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 10 Jul 2020 07:11:52 -0700
Date: Fri, 10 Jul 2020 17:11:47 +0300
From: <dan.carpenter@oracle.com>
To: <daniele.ceraolospurio@intel.com>
Message-ID: <20200710141147.GA135232@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9677
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 phishscore=0
 mlxlogscore=999 bulkscore=0 spamscore=0 mlxscore=0 adultscore=0
 suspectscore=3 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007100099
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9677
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxscore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1011 mlxlogscore=999
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=3
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007100098
X-Mailman-Approved-At: Fri, 10 Jul 2020 17:32:50 +0000
Subject: [Intel-gfx] [bug report] drm/i915: Move the engine mask to
 intel_gt_info
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

Hello Daniele Ceraolo Spurio,

This is a semi-automatic email about new static checker warnings.

The patch 792592e72aba: "drm/i915: Move the engine mask to
intel_gt_info" from Jul 7, 2020, leads to the following Smatch
complaint:

    drivers/gpu/drm/i915/i915_gpu_error.c:801 __err_print_to_sgl()
    error: we previously assumed 'error->gt' could be null (see line 792)

drivers/gpu/drm/i915/i915_gpu_error.c
   791	
   792		if (error->gt)
                    ^^^^^^^^^
Existing code checks for NULL.

   793			err_print_gt(m, error->gt);
   794	
   795		if (error->overlay)
   796			intel_overlay_print_error_state(m, error->overlay);
   797	
   798		if (error->display)
   799			intel_display_print_error_state(m, error->display);
   800	
   801		err_print_capabilities(m, error);
                                          ^^^^^
Unchecked dereference inside function call.

   802		err_print_params(m, &error->params);
   803	}

regards,
dan carpenter
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
