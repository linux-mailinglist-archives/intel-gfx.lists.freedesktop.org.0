Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7EB265EDC
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 13:36:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48BCB6EA12;
	Fri, 11 Sep 2020 11:36:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B62F6EA12
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Sep 2020 11:36:50 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08BBZ07d013599;
 Fri, 11 Sep 2020 11:36:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=qj56Jk3DeD7ZW4jrVyWSZm+XQ0rHs5ssJXUU7V57oKk=;
 b=kybcCMfgKmq3F4otB7d7Eqf9xw2Uu0vWkBVYswPGKAR146JaXgX7YI2yIGGsLeRL1D97
 iHdTzvLIzbj6LHtF4Tq9ZqvcyuGmx0RB3ZBF/Gj9HLsnlAyO10sWpbx3RBIvBKccIC9U
 wRUxtPPmMUqeebdIgT/anp5bTmGa2S9L/1ctYaOwNDtqq+4NboDyk8/jDEquZMSorsFO
 IFgzN3bvRMlQStnr6C5bN1rGd/MUq/ZF0o1R5BaPJmIBgAg9Cs7wfyQsIHj5Y/SDTaRB
 8+qCIJ/wJXtd3p5VkKl53KfEV1A3sSyMz2nWjSHAkmtr/YivV/r2e90ldPdyl8o/5zIT Cg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 33c2mmdnyk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 11 Sep 2020 11:36:48 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08BBTiUx016568;
 Fri, 11 Sep 2020 11:34:48 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 33dacpt42s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Sep 2020 11:34:48 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 08BBYk7V020556;
 Fri, 11 Sep 2020 11:34:47 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 11 Sep 2020 04:34:46 -0700
Date: Fri, 11 Sep 2020 14:34:41 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: maarten.lankhorst@linux.intel.com
Message-ID: <20200911113441.GD367487@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9740
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=934
 malwarescore=0
 bulkscore=0 phishscore=0 adultscore=0 suspectscore=3 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009110094
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9740
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 priorityscore=1501
 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015 mlxlogscore=922
 malwarescore=0 suspectscore=3 lowpriorityscore=0 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009110095
Subject: [Intel-gfx] [bug report] drm/i915: Add an implementation for
 i915_gem_ww_ctx locking, v2.
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

This is a semi-automatic email about new static checker warnings.

The patch 80f0b679d6f0: "drm/i915: Add an implementation for
i915_gem_ww_ctx locking, v2." from Aug 19, 2020, leads to the
following Smatch complaint:

    drivers/gpu/drm/i915/gem/i915_gem_object.h:130 __i915_gem_object_lock()
    error: we previously assumed 'ww' could be null (see line 122)

drivers/gpu/drm/i915/gem/i915_gem_object.h
   113  static inline int __i915_gem_object_lock(struct drm_i915_gem_object *obj,
   114                                           struct i915_gem_ww_ctx *ww,
   115                                           bool intr)
   116  {
   117          int ret;
   118  
   119          if (intr)
   120                  ret = dma_resv_lock_interruptible(obj->base.resv, ww ? &ww->ctx : NULL);
                                                                          ^^^^^^^^^^^^^
   121		else
   122			ret = dma_resv_lock(obj->base.resv, ww ? &ww->ctx : NULL);
                                                            ^^^^^^^^^^^^
Checks for NULL.

   123	
   124		if (!ret && ww)
   125			list_add_tail(&obj->obj_link, &ww->obj_list);
   126		if (ret == -EALREADY)
   127			ret = 0;
   128	
   129		if (ret == -EDEADLK)
   130			ww->contended = obj;
                        ^^^^^^^^^^^^^
Unchecked dereference.

   131	
   132		return ret;

regards,
dan carpenter
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
