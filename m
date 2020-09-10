Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BC726404F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 10:46:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F26F898B6;
	Thu, 10 Sep 2020 08:46:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 131DD898B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 08:46:08 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08A8i11D174162;
 Thu, 10 Sep 2020 08:46:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=3iSHbVtEZ4M05aGNrcQ0LSSu2VuUiZtQawNJrSnrd3A=;
 b=j6KeY0mgoXFOsg/0yJGVdF0g9iVIUy0ARxXXDTsDh9PljOXFeTzhuPr1yIuzDufrILYN
 1bpUKMHh1iVTrTjrUx14TsCGvBqavqHJY6ritnV9GYP8+UgxOcF8tkjGM/DXto5h5SjQ
 4U1mvZTp3iKe132GsYZIMOKOxspgvXze8PjL0NBdo4BA+rZvjjRWTRutd6czKaOUmFby
 krKYUTeIFaIdhAZfIslgP3BcJc50hce1yzc4L2c+YGKoqV8FoyGXMKiSgkZR6/QMZdnn
 hKRKcjg1SqH9P14N26eDBaY0LVSZpsjDBEjBoBjatJgAbNrvZ4gl+HC9/Ud99Cd2BZB2 Kg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 33c3an6jce-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 10 Sep 2020 08:46:07 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08A8f72l138313;
 Thu, 10 Sep 2020 08:44:07 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 33cmk93x6a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Sep 2020 08:44:06 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08A8i5Sk005439;
 Thu, 10 Sep 2020 08:44:05 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 10 Sep 2020 01:44:04 -0700
Date: Thu, 10 Sep 2020 11:43:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: maarten.lankhorst@linux.intel.com
Message-ID: <20200910084359.GA65053@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9739
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0 phishscore=0
 mlxlogscore=999 bulkscore=0 adultscore=0 mlxscore=0 suspectscore=3
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009100081
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9739
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 priorityscore=1501
 clxscore=1015 bulkscore=0 malwarescore=0 lowpriorityscore=0
 mlxlogscore=999 suspectscore=3 adultscore=0 mlxscore=0 impostorscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009100081
Subject: [Intel-gfx] [bug report] drm/i915: Use ww pinning for
 intel_context_create_request()
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

Hello Maarten Lankhorst,

The patch 8a929c9eb1c2: "drm/i915: Use ww pinning for
intel_context_create_request()" from Aug 19, 2020, leads to the
following static checker warning:

	drivers/gpu/drm/i915/gt/intel_context.c:481 intel_context_create_request()
	error: uninitialized symbol 'rq'.

drivers/gpu/drm/i915/gt/intel_context.c
   459  struct i915_request *intel_context_create_request(struct intel_context *ce)
   460  {
   461          struct i915_gem_ww_ctx ww;
   462          struct i915_request *rq;
   463          int err;
   464  
   465          i915_gem_ww_ctx_init(&ww, true);
   466  retry:
   467          err = intel_context_pin_ww(ce, &ww);
   468          if (!err) {
   469                  rq = i915_request_create(ce);
   470                  intel_context_unpin(ce);
   471          } else if (err == -EDEADLK) {
   472                  err = i915_gem_ww_ctx_backoff(&ww);
   473                  if (!err)
   474                          goto retry;

"rq" not initialized on the -EDEADLK path.

   475          } else {
   476                  rq = ERR_PTR(err);
   477          }
   478  
   479          i915_gem_ww_ctx_fini(&ww);
   480  
   481          if (IS_ERR(rq))
                           ^^

   482                  return rq;
   483  

regards,
dan carpenter
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
