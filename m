Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED67D1A7747
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 11:24:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2889F89CA2;
	Tue, 14 Apr 2020 09:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51EDB89CA2;
 Tue, 14 Apr 2020 09:24:41 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03E9CiCo125575;
 Tue, 14 Apr 2020 09:24:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2020-01-29; bh=xdWAyZaHaaEX2YupCMamN+sVA3QQDoXrOWoCTb/1ORo=;
 b=OR0X6430UylFyMiBUmjL56tqoY4CjgFeDPs19fSh0ff+m2vCR8RHjxgn95u2Y/3uM5gk
 3KEPU1gfiO5But9lU0I2xqk0QrJo2PTocSmvrjIr169KPcGIkmVfii2LTJuz55dBT9/9
 XXFSt11CeSMQSN5Jee0er2W+3bu2Dqey5aTs6EjXM91dnr4FFdiubI8gJKS4aT6Q97X/
 2F7AW1QpJZh8siJoNK5FF8SIYrjmPpSHdQMe0J5cKNdx7nATeaOTN3uGVEArnarsUV+S
 ZGlnqar9Z3xDUznijkJHG1uTuyoem9TkFw4qaQ3Pd8t2VbyPTi7cUr5HwpFGYXTZSOlt DQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 30b5ar3acu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Apr 2020 09:24:18 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03E9D0Y7169136;
 Tue, 14 Apr 2020 09:24:17 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 30bqm186ra-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Apr 2020 09:24:17 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 03E9O9Y7032451;
 Tue, 14 Apr 2020 09:24:10 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 14 Apr 2020 02:24:09 -0700
Date: Tue, 14 Apr 2020 12:23:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kbuild@lists.01.org, Colin King <colin.king@canonical.com>
Message-ID: <20200414092359.GC1163@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410192252.76908-1-colin.king@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9590
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=999
 adultscore=0 mlxscore=0 phishscore=0 malwarescore=0 spamscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004140077
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9590
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 impostorscore=0
 clxscore=1015 priorityscore=1501 malwarescore=0 phishscore=0 spamscore=0
 mlxlogscore=999 suspectscore=0 adultscore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004140077
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: remove redundant assignment to
 variable x
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
Cc: kbuild-all@lists.01.org, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Colin,

url:    https://github.com/0day-ci/linux/commits/Colin-King/drm-i915-gt-remove-redundant-assignment-to-variable-x/20200411-032731
base:   git://anongit.freedesktop.org/drm-intel for-linux-next

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

smatch warnings:
drivers/gpu/drm/i915/gt/intel_engine_cs.c:1210 print_request() error: uninitialized symbol 'x'.

# https://github.com/0day-ci/linux/commit/6ee08d455bba0066e8f5f276dcd43d9e3e594dc5
git remote add linux-review https://github.com/0day-ci/linux
git remote update linux-review
git checkout 6ee08d455bba0066e8f5f276dcd43d9e3e594dc5
vim +/x +1210 drivers/gpu/drm/i915/gt/intel_engine_cs.c

f636edb214a5ff drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2017-10-09  1202  static void print_request(struct drm_printer *m,
e61e0f51ba7974 drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2018-02-21  1203  			  struct i915_request *rq,
f636edb214a5ff drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2017-10-09  1204  			  const char *prefix)
f636edb214a5ff drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2017-10-09  1205  {
ab2681512b4c10 drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2018-03-14  1206  	const char *name = rq->fence.ops->get_timeline_name(&rq->fence);
96d4f03c20d04c drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2018-05-17  1207  	char buf[80] = "";
6ee08d455bba00 drivers/gpu/drm/i915/gt/intel_engine_cs.c Colin Ian King 2020-04-10  1208  	int x;
                                                                                                ^^^^^

247870ac8ea729 drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2018-04-24  1209  
247870ac8ea729 drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2018-04-24 @1210  	x = print_sched_attr(rq->i915, &rq->sched.attr, buf, x, sizeof(buf));
                                                                                                                                                     ^
Uninitialized variable

ab2681512b4c10 drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2018-03-14  1211  
b300fde8965fdd drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2019-02-26  1212  	drm_printf(m, "%s %llx:%llx%s%s %s @ %dms: %s\n",
b7268c5eed0ab4 drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2018-04-18  1213  		   prefix,
b300fde8965fdd drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2019-02-26  1214  		   rq->fence.context, rq->fence.seqno,
8547444137ec61 drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2019-01-29  1215  		   i915_request_completed(rq) ? "!" :
8547444137ec61 drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2019-01-29  1216  		   i915_request_started(rq) ? "*" :
8547444137ec61 drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2019-01-29  1217  		   "",
8c334f24e3b448 drivers/gpu/drm/i915/gt/intel_engine_cs.c Chris Wilson   2019-05-01  1218  		   test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
8c334f24e3b448 drivers/gpu/drm/i915/gt/intel_engine_cs.c Chris Wilson   2019-05-01  1219  			    &rq->fence.flags) ? "+" :
52c0fdb25c7c91 drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2019-01-29  1220  		   test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
8c334f24e3b448 drivers/gpu/drm/i915/gt/intel_engine_cs.c Chris Wilson   2019-05-01  1221  			    &rq->fence.flags) ? "-" :
8c334f24e3b448 drivers/gpu/drm/i915/gt/intel_engine_cs.c Chris Wilson   2019-05-01  1222  		   "",
247870ac8ea729 drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2018-04-24  1223  		   buf,
f636edb214a5ff drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2017-10-09  1224  		   jiffies_to_msecs(jiffies - rq->emitted_jiffies),
ab2681512b4c10 drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2018-03-14  1225  		   name);
f636edb214a5ff drivers/gpu/drm/i915/intel_engine_cs.c    Chris Wilson   2017-10-09  1226  }

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
