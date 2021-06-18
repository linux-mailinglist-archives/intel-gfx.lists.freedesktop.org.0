Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AF43AC69D
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 10:56:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C5CA6E998;
	Fri, 18 Jun 2021 08:56:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 4686 seconds by postgrey-1.36 at gabe;
 Fri, 18 Jun 2021 08:56:33 UTC
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C333C6E998
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 08:56:33 +0000 (UTC)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 15I7Mo87003220; Fri, 18 Jun 2021 07:38:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=Bva+99kIbUt8U5GBoQCrjaYa7N50E6Drwc+bAxhYFtU=;
 b=XgABNxHkPvj3NbI1NVpSUdBksdCkXUfNHFyGXCT+v6fDpW55FZ0WVmEvVlajTRSUwxoU
 U62ZBWbtKM/NFZqkkq/y58as9pJvoc9Crvqaqfme2gqujY8DaeLFYDp4fmBwQh91AwZz
 OeHocI6uApIqjG+jsNc/8BC2uV+xpIU9RBRgahzy9Xjv0Mmmqcia2xpleqX4+jhxkQxi
 WRJ0OJ1I165LHWo88IxhLLHpksfi4ikqmGhjroxZ1MiNWtK5JSZ6ZQh9mpOWhOUc8462
 8MxGm7d+K7SVVqdCV2EGIDg49QHJtrqf8keiMDgAx/OsxeP3XCeQkHAk+CzaB5fc/vcW aQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by mx0b-00069f02.pphosted.com with ESMTP id 39770hcu5n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Jun 2021 07:38:24 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 15I7T20X080299;
 Fri, 18 Jun 2021 07:38:23 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by userp3030.oracle.com with ESMTP id 396war5309-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Jun 2021 07:38:23 +0000
Received: from userp3030.oracle.com (userp3030.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 15I7cNBx098104;
 Fri, 18 Jun 2021 07:38:23 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 396war52yt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Jun 2021 07:38:23 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 15I7cMq0020820;
 Fri, 18 Jun 2021 07:38:22 GMT
Received: from mwanda (/102.222.70.252)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 18 Jun 2021 00:38:21 -0700
Date: Fri, 18 Jun 2021 10:38:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: michal.wajdeczko@intel.com
Message-ID: <YMxNaH5MQakeg1L7@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-GUID: M4da_Tpurrvuv3Cp6IQ8kxyR0XxZEtC4
X-Proofpoint-ORIG-GUID: M4da_Tpurrvuv3Cp6IQ8kxyR0XxZEtC4
Subject: [Intel-gfx] [bug report] drm/i915/guc: Add support for data
 reporting in GuC responses
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

Hello Michal Wajdeczko,

The patch b839a869dfc9: "drm/i915/guc: Add support for data reporting
in GuC responses" from Mar 26, 2018, leads to the following static
checker warning:

	drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:307 intel_guc_ct_enable()
	error: passing non negative 4095 to ERR_PTR

drivers/gpu/drm/i915/gt/uc/.intel_guc.c
   405          intel_guc_notify(guc);
   406  
   407          /*
   408           * No GuC command should ever take longer than 10ms.
   409           * Fast commands should still complete in 10us.
   410           */
   411          ret = __intel_wait_for_register_fw(uncore,
   412                                             guc_send_reg(guc, 0),
   413                                             INTEL_GUC_MSG_TYPE_MASK,
   414                                             INTEL_GUC_MSG_TYPE_RESPONSE <<
   415                                             INTEL_GUC_MSG_TYPE_SHIFT,
   416                                             10, 10, &status);
   417          /* If GuC explicitly returned an error, convert it to -EIO */
   418          if (!ret && !INTEL_GUC_MSG_IS_RESPONSE_SUCCESS(status))
   419                  ret = -EIO;

If __intel_wait_for_register_fw() fails then either "ret" is set or
"status" status has a code and "ret" becomes -EIO.

   420  
   421          if (ret) {
   422                  DRM_ERROR("MMIO: GuC action %#x failed with error %d %#x\n",
   423                            action[0], ret, status);
   424                  goto out;

So if there is any errors we return here.

   425          }
   426  
   427          if (response_buf) {
   428                  int count = min(response_buf_size, guc->send_regs.count - 1);
   429  
   430                  for (i = 0; i < count; i++)
   431                          response_buf[i] = intel_uncore_read(uncore,
   432                                                              guc_send_reg(guc, i + 1));
   433          }
   434  
   435          /* Use data from the GuC response as our return value */
   436          ret = INTEL_GUC_MSG_TO_DATA(status);

But this is setting "ret" to something positive in the 0xffff range.
The caller treats it as an error code.

   437  
   438  out:
   439          intel_uncore_forcewake_put(uncore, guc->send_regs.fw_domains);
   440          mutex_unlock(&guc->send_mutex);
   441  
   442          return ret;
   443  }

regards,
dan carpenter
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
