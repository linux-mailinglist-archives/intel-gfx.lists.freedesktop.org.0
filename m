Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A12A8183207
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 14:51:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FA5D6EAC7;
	Thu, 12 Mar 2020 13:51:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16A916EAC7
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 13:51:36 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02CDmZuG065934;
 Thu, 12 Mar 2020 13:51:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2020-01-29; bh=v9rf0J+IPOAa61+c5iVtPTw+C7M7p8B36+nkXcafbHg=;
 b=akwQanQOd3cDxG8Brs/vDcQ3TXsbjOta/zSeclDBAwGN+YipQjoWuw1xLzjLhx9fznqu
 DDkWCFBDSKyqbquE2oJxeQcnHOwnNoVTZbgDFm06p8fIjIOVORTCfi3zzfZcWgKd1r2d
 32kWWIxS2YQ0wba9w3/OZBBDAaBY26q1Wjnbm24kcbJuq+SZYM3mXP69hgmOHUrLJiUn
 VZy1hkP1n6RzTavtOC9+7c/UcFoDPjFozBivXoB5VEqI0y0UKYDm4dlB4offJdO5sDAW
 zq17d1kUnte/7mHmkjLqmWP3rP2Ced9hDLDLxzS8bGm/ysWZQoQJjxXegpdq+ypYZ6Df 4A== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2yp9v6cskv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Mar 2020 13:51:32 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02CDoMCK190708;
 Thu, 12 Mar 2020 13:51:32 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2yqkvmqfm6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Mar 2020 13:51:32 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02CDpVq3028035;
 Thu, 12 Mar 2020 13:51:31 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 12 Mar 2020 06:51:30 -0700
Date: Thu, 12 Mar 2020 16:51:24 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kbuild@lists.01.org, Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20200312135124.GK11561@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306100557.2077450-1-lionel.g.landwerlin@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9557
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0
 mlxlogscore=999 malwarescore=0 adultscore=0 bulkscore=0 mlxscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003120074
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9557
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 mlxlogscore=999
 phishscore=0 adultscore=0 clxscore=1011 impostorscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003120074
Subject: Re: [Intel-gfx] [PATCH v4 1/3] drm/i915/perf: remove generated code
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lionel,

Thank you for the patch! Perhaps something to improve:

url:    https://github.com/0day-ci/linux/commits/Lionel-Landwerlin/drm-i915-perf-remove-generated-code/20200307-024544
base:   git://anongit.freedesktop.org/drm-intel for-linux-next

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

smatch warnings:
drivers/gpu/drm/i915/selftests/i915_perf.c:26 alloc_empty_config() warn: returning -1 instead of -ENOMEM is sloppy
drivers/gpu/drm/i915/selftests/i915_perf.c:43 alloc_empty_config() warn: inconsistent returns 'perf->metrics_lock'.

# https://github.com/0day-ci/linux/commit/9da4da9daea4fec31c06906294a6e64e9bd19783
git remote add linux-review https://github.com/0day-ci/linux
git remote update linux-review
git checkout 9da4da9daea4fec31c06906294a6e64e9bd19783
vim +26 drivers/gpu/drm/i915/selftests/i915_perf.c

9da4da9daea4fe Lionel Landwerlin 2020-03-06  19  static int
9da4da9daea4fe Lionel Landwerlin 2020-03-06  20  alloc_empty_config(struct i915_perf *perf)
9da4da9daea4fe Lionel Landwerlin 2020-03-06  21  {
9da4da9daea4fe Lionel Landwerlin 2020-03-06  22  	struct i915_oa_config *oa_config;
9da4da9daea4fe Lionel Landwerlin 2020-03-06  23  
9da4da9daea4fe Lionel Landwerlin 2020-03-06  24  	oa_config = kzalloc(sizeof(*oa_config), GFP_KERNEL);
9da4da9daea4fe Lionel Landwerlin 2020-03-06  25  	if (!oa_config)
9da4da9daea4fe Lionel Landwerlin 2020-03-06 @26  		return -1;

return -ENOMEM

9da4da9daea4fe Lionel Landwerlin 2020-03-06  27  
9da4da9daea4fe Lionel Landwerlin 2020-03-06  28  	oa_config->perf = perf;
9da4da9daea4fe Lionel Landwerlin 2020-03-06  29  	kref_init(&oa_config->ref);
9da4da9daea4fe Lionel Landwerlin 2020-03-06  30  
9da4da9daea4fe Lionel Landwerlin 2020-03-06  31  	strlcpy(oa_config->uuid, TEST_OA_CONFIG_UUID, sizeof(oa_config->uuid));
9da4da9daea4fe Lionel Landwerlin 2020-03-06  32  
9da4da9daea4fe Lionel Landwerlin 2020-03-06  33  	mutex_lock(&perf->metrics_lock);
9da4da9daea4fe Lionel Landwerlin 2020-03-06  34  
9da4da9daea4fe Lionel Landwerlin 2020-03-06  35  	oa_config->id = idr_alloc(&perf->metrics_idr, oa_config, 2, 0, GFP_KERNEL);
9da4da9daea4fe Lionel Landwerlin 2020-03-06  36  	if (oa_config->id < 0)  {
9da4da9daea4fe Lionel Landwerlin 2020-03-06  37  		i915_oa_config_put(oa_config);

unlock

9da4da9daea4fe Lionel Landwerlin 2020-03-06  38  		return -1;

return oa_config->id;

9da4da9daea4fe Lionel Landwerlin 2020-03-06  39  	}
9da4da9daea4fe Lionel Landwerlin 2020-03-06  40  
9da4da9daea4fe Lionel Landwerlin 2020-03-06  41  	mutex_unlock(&perf->metrics_lock);
9da4da9daea4fe Lionel Landwerlin 2020-03-06  42  
9da4da9daea4fe Lionel Landwerlin 2020-03-06 @43  	return 0;
9da4da9daea4fe Lionel Landwerlin 2020-03-06  44  }

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
