Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB00E1C902D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 16:43:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B79D6E9BC;
	Thu,  7 May 2020 14:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEE476E9BC
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 14:43:02 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 047EXfqo168469;
 Thu, 7 May 2020 14:42:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2020-01-29; bh=bocl0FMwqPPYnizsdvS9aOeOl5oGbXzittSfq87nlug=;
 b=P5/AKg9stiddu8D4HolsWbvsPAXDyI807w0OtlHMoYGTG3stZP5it3aCHlhaYNWHp3hX
 6j01a4GMMjNzuP3FviCwky2HW0VBlQzc/PoMeC4J7u6xSM6XkMJSD0KmFd4Gb7OvNUov
 lJqdthdJ4iNvX5VW0YzbrGc1+iAUqfLUAKQ1gLVUkYexjAJ/eJKI4fDAM8GOPo/jl4JW
 gIL56S7uN4N+cVFOuY3X0YfE2CsE1zjF62K8pAU3OsPtulTMjPM1HtrqVYdUO1ZfUyBH
 K5qvfxsv3ey7nrk4au2S1C5OkVVHjwJj6GnJcfThD9dfc0EbcMJTG1aydo+NJ8vO+OPR DQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 30vhvyguy6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 14:42:54 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 047Egr2t137661;
 Thu, 7 May 2020 14:42:53 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 30sjdy7nqr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 14:42:53 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 047Egd7r007237;
 Thu, 7 May 2020 14:42:39 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 07 May 2020 07:42:39 -0700
Date: Thu, 7 May 2020 17:42:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kbuild@lists.01.org, Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <20200507144233.GO1992@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504111249.1367096-4-lionel.g.landwerlin@intel.com>
Message-ID-Hash: ZYJO6DOCBMOJC572YR62YHENBHBCS2WK
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 mlxscore=0
 bulkscore=0 adultscore=0 phishscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070119
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 mlxlogscore=999
 spamscore=0 phishscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 malwarescore=0 mlxscore=0 adultscore=0 suspectscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070118
Subject: [Intel-gfx] [kbuild] Re: [PATCH v12 3/4] drm/i915/perf: prepare
 driver to receive multiple ctx handles
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
Cc: kbuild-all@lists.01.org, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lionel,

Thank you for the patch! Perhaps something to improve:

url:    https://github.com/0day-ci/linux/commits/Lionel-Landwerlin/drm-i915-perf-Add-support-for-multi-context-perf-queries/20200505-060720
base:   git://anongit.freedesktop.org/drm-intel for-linux-next

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

New smatch warnings:
drivers/gpu/drm/i915/i915_perf.c:1457 i915_oa_stream_destroy() error: uninitialized symbol 'err'.

Old smatch warnings:
drivers/gpu/drm/i915/i915_perf.c:1383 oa_get_render_ctx_ids() error: double unlocked 'ctx->engines_mutex' (orig line 1351)
drivers/gpu/drm/i915/i915_perf.c:3044 i915_oa_stream_init() error: uninitialized symbol 'timeline'.
drivers/gpu/drm/i915/i915_perf.c:3664 i915_perf_open_ioctl_locked() error: uninitialized symbol 'ret'.

# https://github.com/0day-ci/linux/commit/dc9d77b54dfbfd0de4e30e59d29d5216b80a51b2
git remote add linux-review https://github.com/0day-ci/linux
git remote update linux-review
git checkout dc9d77b54dfbfd0de4e30e59d29d5216b80a51b2
vim +/err +1457 drivers/gpu/drm/i915/i915_perf.c

307ca63ef54097 Lionel Landwerlin     2020-05-04  1441  
d79651522e89c4 Robert Bragg          2016-11-07  1442  static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
d79651522e89c4 Robert Bragg          2016-11-07  1443  {
8f8b1171e1a514 Chris Wilson          2019-10-07  1444  	struct i915_perf *perf = stream->perf;
307ca63ef54097 Lionel Landwerlin     2020-05-04  1445  	int err;
                                                        ^^^^^^^

d79651522e89c4 Robert Bragg          2016-11-07  1446  
8f8b1171e1a514 Chris Wilson          2019-10-07  1447  	BUG_ON(stream != perf->exclusive_stream);
d79651522e89c4 Robert Bragg          2016-11-07  1448  
19f81df2859eb1 Robert Bragg          2017-06-13  1449  	/*
f89823c212246d Lionel Landwerlin     2017-08-03  1450  	 * Unset exclusive_stream first, it will be checked while disabling
f89823c212246d Lionel Landwerlin     2017-08-03  1451  	 * the metric set on gen8+.
a5af081d012e8b Chris Wilson          2020-02-27  1452  	 *
a5af081d012e8b Chris Wilson          2020-02-27  1453  	 * See i915_oa_init_reg_state() and lrc_configure_all_contexts()
19f81df2859eb1 Robert Bragg          2017-06-13  1454  	 */
a5af081d012e8b Chris Wilson          2020-02-27  1455  	WRITE_ONCE(perf->exclusive_stream, NULL);
dc9d77b54dfbfd Lionel Landwerlin     2020-05-04  1456  
dc9d77b54dfbfd Lionel Landwerlin     2020-05-04 @1457  	if (!err) {
                                                            ^^^^^
Uninitialized

307ca63ef54097 Lionel Landwerlin     2020-05-04  1458  		err = i915_perf_stream_sync(stream, false /* enable */);
307ca63ef54097 Lionel Landwerlin     2020-05-04  1459  		if (err) {
307ca63ef54097 Lionel Landwerlin     2020-05-04  1460  			drm_err(&perf->i915->drm,
307ca63ef54097 Lionel Landwerlin     2020-05-04  1461  				"Error while disabling OA stream\n");
307ca63ef54097 Lionel Landwerlin     2020-05-04  1462  		}
dc9d77b54dfbfd Lionel Landwerlin     2020-05-04  1463  	}

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
kbuild mailing list -- kbuild@lists.01.org
To unsubscribe send an email to kbuild-leave@lists.01.org
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
