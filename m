Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9676C264023
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 10:36:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC0056E339;
	Thu, 10 Sep 2020 08:36:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57BAE6E339
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 08:36:27 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08A8Y5NS150613;
 Thu, 10 Sep 2020 08:36:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=GCz9wm5qFbwf7Jdc2xlUd9If6vmdTOpDv2auXvM30fY=;
 b=U7fSAXGmYt1Tc/cgxNzqfQQ+kYzn8WLvJwx2MKKmgjYGt7vI7aX8Abj4u7d+ftA9Ay08
 f4ytgvOR8p25nMn4uR3QZw4z1UBsCubSk5hU1k98Yr7gGVZ7RJ84sUBkt2Tq46TXG6hb
 v29xZwhVPScq7vIJX/aMosIZ7osszZ9vXV8F4sL6nkDhOLLal6iAhoA23ZpWRYyU5AxE
 gYb5UPF6pVm5Ew6MyMAQ+Na7pavBaPZ2/m1eR9TCd5yUGySc0CwoOGOziQjVKkfC8ank
 +CESDGu1OgYl+LosipLU67SotLO22y0SiOgglc9ezO9ZlK1Jyjrfc4Ipm/4bsEn8ELPW 4g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 33c3an6fuw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 10 Sep 2020 08:36:24 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08A8ZC2I112026;
 Thu, 10 Sep 2020 08:36:24 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 33cmk9394v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Sep 2020 08:36:24 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08A8aNdO025259;
 Thu, 10 Sep 2020 08:36:23 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 10 Sep 2020 01:36:22 -0700
Date: Thu, 10 Sep 2020 11:36:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Dave Airlie <airlied@redhat.com>, maarten.lankhorst@linux.intel.com
Message-ID: <20200910083617.GA64330@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9739
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0 phishscore=0
 mlxlogscore=999 bulkscore=0 adultscore=0 mlxscore=0 suspectscore=1
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009100080
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9739
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 priorityscore=1501
 clxscore=1011 bulkscore=0 malwarescore=0 lowpriorityscore=0
 mlxlogscore=999 suspectscore=1 adultscore=0 mlxscore=0 impostorscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009100080
Subject: [Intel-gfx] [bug report] drm/i915: Use per object locking in
 execbuf, v12.
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

Hey Dave,

I think this is a bad merge:

The patch c43ce12328df: "drm/i915: Use per object locking in execbuf,
v12." from Aug 19, 2020, leads to the following static checker
warning:

	drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1459 __reloc_entry_gpu()
	warn: signedness bug returning '(-35)'

drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
  1440  static bool __reloc_entry_gpu(struct i915_execbuffer *eb,
               ^^^^
This should be int.

  1441                                struct i915_vma *vma,
  1442                                u64 offset,
  1443                                u64 target_addr)
  1444  {
  1445          const unsigned int gen = eb->reloc_cache.gen;
  1446          unsigned int len;
  1447          u32 *batch;
  1448          u64 addr;
  1449  
  1450          if (gen >= 8)
  1451                  len = offset & 7 ? 8 : 5;
  1452          else if (gen >= 4)
  1453                  len = 4;
  1454          else
  1455                  len = 3;
  1456  
  1457          batch = reloc_gpu(eb, vma, len);
  1458          if (batch == ERR_PTR(-EDEADLK))
  1459                  return (s64)-EDEADLK;

No need for this cast, btw.

  1460          else if (IS_ERR(batch))
  1461                  return false;
  1462  
  1463          addr = gen8_canonical_addr(vma->node.start + offset);
  1464          if (gen >= 8) {
  1465                  if (offset & 7) {
  1466                          *batch++ = MI_STORE_DWORD_IMM_GEN4;
  1467                          *batch++ = lower_32_bits(addr);
  1468                          *batch++ = upper_32_bits(addr);
  1469                          *batch++ = lower_32_bits(target_addr);
  1470  
  1471                          addr = gen8_canonical_addr(addr + 4);
  1472  
  1473                          *batch++ = MI_STORE_DWORD_IMM_GEN4;
  1474                          *batch++ = lower_32_bits(addr);
  1475                          *batch++ = upper_32_bits(addr);

regards,
dan carpenter
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
