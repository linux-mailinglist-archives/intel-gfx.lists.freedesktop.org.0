Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4001C8590
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 11:19:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAC2E6E972;
	Thu,  7 May 2020 09:19:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC35A6E963
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 09:19:29 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0479JHcR091108;
 Thu, 7 May 2020 09:19:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=+2WzmyD/U5Y8DYNIwcuhxYZPyAon26sNUd9b8Po1DsE=;
 b=DiGQhSkvN2k5+yBw01B/tLk6IsQjpVbZ21yAMihlqwIdxNrPHa51qskG6OP8EUM0NWeW
 jaK+CmX17wyTARuI51KCxIn/YY5ET270WKJveFoXihusc13AbDDtBb4yjYtub9SbDMWn
 1oFkNaxdCI7K7PSDKGts8x9r71uWeFinsJQS4LxHnYqufFUWeeNUh7wEyFUmJR7efpWf
 bLbjAVFE8HwEReL+pJZLCGGa7EAaDyTdA6Bv5N2Pu0WqDYMbyuEarrSqH3nir6YDw/C9
 QzEAoL71bwzpE8dkbG76wpriMwJ5krpJB1iGcWXF/3DRKcmxc6cH/6F5Tzi19DRt9C7P Xg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 30usgq6531-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 09:19:22 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0479Cgl3059920;
 Thu, 7 May 2020 09:17:22 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 30us7q1sxk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 09:17:22 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0479HLeK022169;
 Thu, 7 May 2020 09:17:21 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 07 May 2020 02:17:20 -0700
Date: Thu, 7 May 2020 12:17:14 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: chris@chris-wilson.co.uk
Message-ID: <20200507091714.GA244488@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 suspectscore=3
 mlxlogscore=967 malwarescore=0 phishscore=0 mlxscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070076
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 suspectscore=3 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005070076
Subject: [Intel-gfx] [bug report] drm/i915: Use the async worker to avoid
 reclaim tainting the ggtt->mutex
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

The patch e3793468b466: "drm/i915: Use the async worker to avoid
reclaim tainting the ggtt->mutex" from Jan 30, 2020, leads to the
following static checker warning:

	drivers/gpu/drm/i915/i915_vma.c:356 i915_vma_wait_for_bind()
	warn: 's64max' cannot fit into 'bool'

drivers/gpu/drm/i915/i915_vma.c
   345  int i915_vma_wait_for_bind(struct i915_vma *vma)
   346  {
   347          int err = 0;
   348  
   349          if (rcu_access_pointer(vma->active.excl.fence)) {
   350                  struct dma_fence *fence;
   351  
   352                  rcu_read_lock();
   353                  fence = dma_fence_get_rcu_safe(&vma->active.excl.fence);
   354                  rcu_read_unlock();
   355                  if (fence) {
   356                          err = dma_fence_wait(fence, MAX_SCHEDULE_TIMEOUT);
                                                            ^^^^^^^^^^^^^^^^^^^^
The dma_fence_wait() takes a bool, not a timeout value.

   357                          dma_fence_put(fence);
   358                  }
   359          }
   360  
   361          return err;
   362  }

regards,
dan carpenter
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
