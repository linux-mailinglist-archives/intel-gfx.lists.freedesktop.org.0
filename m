Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4257B329F82
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 13:53:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B79089DE6;
	Tue,  2 Mar 2021 12:53:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 5668 seconds by postgrey-1.36 at gabe;
 Tue, 02 Mar 2021 12:53:27 UTC
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FD4089DE6
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 12:53:27 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 122BIwKM149510;
 Tue, 2 Mar 2021 11:18:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=DueUpErQBDDiP8EnJhjLa7TSuQFS0AjMi3SC+jzYoWU=;
 b=SnaSJeM7WqXY+8WIw9LV+i04tFw+k2iBIEwW3HAUDPhXgIlQvMGottHG8WbAiKDPJQek
 //8p5Jo56bVE9JflZrE81dDk8DiK2FXzxm6JkpXJb7rQvCAHWJx2b6QfTLqshl91TLJ9
 7ztD/AieHZjLwTJvpP/XyINkESCKl/YmCSBUnsn6bhQRV0aOWym0c3dtA1ad4yMjMAoJ
 eXtG5uBnhOYxqzTVO8XKoFVVo7Pjv4AIf86SB7vwcQC18GjS/f7fMrg6tAFVLPSQ9gUt
 YD3WngfnhqztiwR3gYRPaOn4YRSldj9MrWsdshWXDtp7UOIJNDR+IU1Z2SQIcJtUSLSV YQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 36yeqmy5d8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Mar 2021 11:18:58 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 122BF2cT076174;
 Tue, 2 Mar 2021 11:18:57 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 36yyyyqvd7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Mar 2021 11:18:57 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 122BItAJ006183;
 Tue, 2 Mar 2021 11:18:55 GMT
Received: from mwanda (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Mar 2021 11:18:55 +0000
Date: Tue, 2 Mar 2021 14:18:48 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: matthew.auld@intel.com
Message-ID: <YD4fGEw/aeme7oye@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9910
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxlogscore=999
 phishscore=0 bulkscore=0 mlxscore=0 spamscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103020094
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9910
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 mlxlogscore=999 suspectscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 adultscore=0 mlxscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103020095
Subject: [Intel-gfx] [bug report] drm/i915: buddy allocator
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

[ Sorry, I don't know why Smatch is complaining about two year old code.
  The warning is valid enough, though.  - dan ]

Hello Matthew Auld,

The patch 14d1b9a6247c: "drm/i915: buddy allocator" from Aug 9, 2019,
leads to the following static checker warning:

	drivers/gpu/drm/i915/selftests/i915_buddy.c:169 igt_check_blocks()
	warn: variable dereferenced before check 'block' (see line 126)

drivers/gpu/drm/i915/selftests/i915_buddy.c
   111  static int igt_check_blocks(struct i915_buddy_mm *mm,
   112                              struct list_head *blocks,
   113                              u64 expected_size,
   114                              bool is_contiguous)
   115  {
   116          struct i915_buddy_block *block;
   117          struct i915_buddy_block *prev;
   118          u64 total;
   119          int err = 0;
   120  
   121          block = NULL;
   122          prev = NULL;
   123          total = 0;
   124  
   125          list_for_each_entry(block, blocks, link) {
                                    ^^^^^
"block" is the list iterator so it can't be NULL.

   126                  err = igt_check_block(mm, block);
   127  
   128                  if (!i915_buddy_block_is_allocated(block)) {
   129                          pr_err("block not allocated\n"),
   130                          err = -EINVAL;
   131                  }
   132  
   133                  if (is_contiguous && prev) {
   134                          u64 prev_block_size;
   135                          u64 prev_offset;
   136                          u64 offset;
   137  
   138                          prev_offset = i915_buddy_block_offset(prev);
   139                          prev_block_size = i915_buddy_block_size(mm, prev);
   140                          offset = i915_buddy_block_offset(block);
   141  
   142                          if (offset != (prev_offset + prev_block_size)) {
   143                                  pr_err("block offset mismatch\n");
   144                                  err = -EINVAL;
   145                          }
   146                  }
   147  
   148                  if (err)
   149                          break;
   150  
   151                  total += i915_buddy_block_size(mm, block);
   152                  prev = block;
   153          }
   154  
   155          if (!err) {
   156                  if (total != expected_size) {
   157                          pr_err("size mismatch, expected=%llx, found=%llx\n",
   158                                 expected_size, total);
   159                          err = -EINVAL;
   160                  }
   161                  return err;
   162          }
   163  
   164          if (prev) {
   165                  pr_err("prev block, dump:\n");
   166                  igt_dump_block(mm, prev);
   167          }
   168  
   169          if (block) {
                    ^^^^^
This is impossible.  It's not clear what was intended...

   170                  pr_err("bad block, dump:\n");
   171                  igt_dump_block(mm, block);
   172          }
   173  
   174          return err;
   175  }

regards,
dan carpenter
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
