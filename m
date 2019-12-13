Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 967D911E381
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 13:21:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F4776E52D;
	Fri, 13 Dec 2019 12:21:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C09E76E52D
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 12:21:14 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBDCEMFe077393;
 Fri, 13 Dec 2019 12:21:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=owq+lOzPP+Ag5OBYqDdLPr13NvCLWX8yjSi7NNPhupE=;
 b=liPhZ0qLBkxDyt5vG6BAQrZrDouPGqFnxG7wJSTUqcKbCVnVLqKbSB5+xPBnqSTh+nwa
 lC534aaw5AtrDcvLguSeN0cOKOWRAyU4426xLWvbQZyzpbDLdAoiiAVHUagtROdIfBeY
 QZoHHTzX4AhmDrDh6cl/yWtuKSc/xoLyRHY1qnCBcqjFvLeKgF0V8FhxBPNx6Hc9uIZt
 oiDjBoSifPpYsQuAWcfeJSWmz5BrroGHRHf7oqzVmw2UAzQj3GBLs7WutCG1Fffmsuhg
 JuXNGnidRSG+d9G2bZhwKoCz2G0p2TNlUvEnSGCJ0CwVB9ECRQvK0JnChwDMcT/2yFQO 9g== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2wrw4nnnaj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 13 Dec 2019 12:21:10 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBDCEPd1112987;
 Fri, 13 Dec 2019 12:21:09 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2wumk8nmy2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 13 Dec 2019 12:21:09 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xBDCL7Au017743;
 Fri, 13 Dec 2019 12:21:08 GMT
Received: from kili.mountain (/129.205.23.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 13 Dec 2019 04:21:07 -0800
Date: Fri, 13 Dec 2019 15:20:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: chris@chris-wilson.co.uk
Message-ID: <20191213122058.ji7cukwkclpezmod@kili.mountain>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9469
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=924
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912130100
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9469
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=987 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912130100
Subject: [Intel-gfx] [bug report] drm/i915: Use the i915_device name for
 identifying our request fences
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Chris Wilson,

The patch 65c29dbb19b2: "drm/i915: Use the i915_device name for
identifying our request fences" from Dec 11, 2019, leads to the
following static checker warning:

	drivers/gpu/drm/i915/i915_request.c:77 i915_fence_get_timeline_name()
	warn: this array is non-NULL. 'to_request(fence)->gem_context->name'

drivers/gpu/drm/i915/i915_request.c
    63  static const char *i915_fence_get_timeline_name(struct dma_fence *fence)
    64  {
    65          /*
    66           * The timeline struct (as part of the ppgtt underneath a context)
    67           * may be freed when the request is no longer in use by the GPU.
    68           * We could extend the life of a context to beyond that of all
    69           * fences, possibly keeping the hw resource around indefinitely,
    70           * or we just give them a false name. Since
    71           * dma_fence_ops.get_timeline_name is a debug feature, the occasional
    72           * lie seems justifiable.
                   ^^^^^^^^^^^^^^^^^^^^^
Obsolete comment?

    73           */
    74          if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
    75                  return "signaled";
    76  
    77          return to_request(fence)->gem_context->name ?: "[" DRIVER_NAME "]";
                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Not possibly NULL.

    78  }

regards,
dan carpenter
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
