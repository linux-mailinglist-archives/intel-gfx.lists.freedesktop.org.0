Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1695041EE83
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 15:26:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 208616E4D4;
	Fri,  1 Oct 2021 13:26:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E446B6E4D4
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 13:25:59 +0000 (UTC)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 191D5wLf012040; 
 Fri, 1 Oct 2021 13:25:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=mwsdRV+kWFxLTjdb5nYGdlDVx4c1klBW2+NKzQzlMh0=;
 b=Ese4LZgvfOcss3H11V+1ct8akrrwi26JWle/rRnLFeCRKqQAK2m8VJ4/B8bNoj/HS+ui
 2a49xoC4WZmOzqIPpsQ6sq1/gXn6g6skzAidQH3pE8gV5ekUJLJL/d9sfqd8XwOxYtwS
 4224fWe/gMR4NTi4z9OjoWpjgzjU+wn4AsbBt2LOK+EApgiKvV0VG9+JIcOrF3crOiXg
 9VK3VucmsDmfqunSBNhVeBWCsN7dFLOg2GwYwOkrHum/nhXhHwMKQ+Eck1CYMO1ll+Bs
 s1PQGI7cxMLAYzZKToJVc3DWMfHCf4+te56FLMPS6745iLkcfnx8rHsvZtvGGtmLCDPP rg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3bdds876e5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 01 Oct 2021 13:25:57 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 191DPswl179527;
 Fri, 1 Oct 2021 13:25:56 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2047.outbound.protection.outlook.com [104.47.66.47])
 by aserp3020.oracle.com with ESMTP id 3bceu8mh4k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 01 Oct 2021 13:25:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U8hDv5ELLDBJy0w3Qz8Lvv2Pcv1kbuvxzKuCLGo4YCS/u2gponNQvRAMNiocMFAYkEhzv5h5Qeypocciy3x9lUpivjxcqmb+vy4GUF/Ng52kaBBCg4utOr5ij8+qZRyXT+VDtx0T48UnGiM+sJhSkmo9XnKjjAog6JujEoweeGUpSdZVD7lVRQQEkeMbwgYtaCq0YfKmzV8r5lzRU4VrwmuHb+6lbHYfj1HahKIo2t1JPTSoSMmlim3f/BVI1M2ERT3NmpTuk+dSJa7GvkeSyToOZ7EFAEUqNAIfsAGINiPkMVICQ+1MtMiAoYfv/RPBtvpjqj7NWfe6iijLYH+PJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mwsdRV+kWFxLTjdb5nYGdlDVx4c1klBW2+NKzQzlMh0=;
 b=BOF6WnrnxddqEpRqN7tZv00lfn+E5TnuuDmBG6bkZjdx1Z8EWORjOfnZHjhC6uJblLWCnttjfLD6NeO3lfFNg9SehUbHocWv6q+Wn3LKC6bfSIEQdLLN+Ubp6/u3DbUZsSdcNJeC6Z5mSv/zwDYyGp3q3VHmmovcHFiKpd7KF1KW6MA98o7PJ6VO+FpA1FcjpGtnqhQkdwHLj7jlOH+vMQsvlVBB6k2TXI4krqY4i6SYeeMn3Mx3T0BuBqFzGGmRcdZjwP8wC+hW27+EQIo5cGeNTBfbvwZiUwoQQ5sXRXzjxjzpgZ+zH3fvJII8q2s3trsbeDdOyiJE39ldCWDApg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mwsdRV+kWFxLTjdb5nYGdlDVx4c1klBW2+NKzQzlMh0=;
 b=Zr8BGJXiUOnmzKtgSZ6nDYpXZWCbM+pvtkexbSRTxlkWQixUTsxvuRunLSXm8TfxOw/4St7DQSu2pM5KtDPFhaVGBUMEr2/RGY/NxDr7l/J5hlbxRwqUJRvw2vfsDzuQrwm/tvvkqqzSlzZF49JIS1P/q3EC+34ltK+Y+COBR0A=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=oracle.com;
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1549.namprd10.prod.outlook.com
 (2603:10b6:300:26::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.13; Fri, 1 Oct
 2021 13:25:45 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9%5]) with mapi id 15.20.4544.025; Fri, 1 Oct 2021
 13:25:45 +0000
Date: Fri, 1 Oct 2021 16:25:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20211001132535.GA7930@kili>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZR0P278CA0070.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:21::21) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kili (62.8.83.99) by ZR0P278CA0070.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:21::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.17 via Frontend
 Transport; Fri, 1 Oct 2021 13:25:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: befa0498-64c4-46d8-287e-08d984def980
X-MS-TrafficTypeDiagnostic: MWHPR10MB1549:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR10MB154904A521F19BD30DCB94BD8EAB9@MWHPR10MB1549.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JhBLeolmBwgd7LMWI6rwhyTt11wL8L2/Ta2jYiXE6lv325hfYB+cOUONdDtKns19gTTvGMrL8G9mQecCXtxQswUiWbVbMOjCDfjfU+l597FIGuRpkSyq0Rb26vVXenL3xyqstqw0wMopZOTqYefignqMSz4PAdt04dZXexVybfCZuIvuVdp1CTJTzqNyy1h9Y6G5218QaGKnNNDiymJ853497CIqXeGqd7TaV5d4GpcB1X7BlNTp1DNxt/tBuRcTez9AraXPy2GtIX610WG5roLKWEqNbd2eHKQRrrs6A8Rb5AszovXr+p+0nmCgaaURKiRzrbc4CouHeCLwWn9BwbyAbOb1LbqSOglCxJY2ByK4/cscrmYH2KPsqWZ6C1msYRl7xZEh+Qscqsarj0vMskM8cj86UveffvAR151+zj3ts9CfUshmboTkO3dsvfoGbtDrzcrLMLPLoK+Ht9d5KDtI4CR+g6qYFtzVusahfZuYU/lNmigQcSi2j15wAfolebXHYBXSR3av6E+FZK0wQyRNKlzw+fcp04Ffw6BdiJlhq2ukxRAl1G35cCyR+TWRgZ6pFSiMTl1Hcwr+gR5VL4CE373opxh/nP0AM8B1s7m6Nd7xDtW7f3F1TVjsGC9iRPQKpotqlUmL2U8SWt2DmgEx1uGcEiDs2umgI3aYq15I9UcBGx1eR5PfIahGBZWJxEKXkTDA4Iq5HqarPuZwaA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(33716001)(38100700002)(8676002)(1076003)(4326008)(38350700002)(33656002)(2906002)(66476007)(66556008)(86362001)(9576002)(956004)(8936002)(66946007)(26005)(9686003)(83380400001)(6496006)(186003)(52116002)(6916009)(316002)(55016002)(6666004)(508600001)(44832011)(5660300002)(4744005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3jt9co1D6rb7pmdlZ/C+Ggf3XlnT6TDyeAxJaTj3+JzariuqPlVjiCjh4A3z?=
 =?us-ascii?Q?4snS8nJjuw9Snb1ZeqzY2Er+OCaEuDeoPzapQ1KCYARvK4T2jhlvTEOS1EEX?=
 =?us-ascii?Q?nfEWbIgVk80iD2eVma17ppe+VtEt3X5YF3BV2gh7jetCgXPFD4H1Im8nT1BX?=
 =?us-ascii?Q?LsPzDyvPGcQ9A/PQJoaDaQpJi5KdfQzkRoGlHj/fNlMUV8OTp4lgY7Hg0lsb?=
 =?us-ascii?Q?oet6+Zk/GBnK+9n5MeUWZCurOaL09EhrvRz8RFy0GBAtLbH6DNKZx2ndaGbk?=
 =?us-ascii?Q?q3eskSJ9Z1JJlxtgslY9KPBy9DbhoXOViGKo6xP87rROr8w8dYHtJZ6l5MWF?=
 =?us-ascii?Q?icoOOt6ygE97/nYFaV19uB3Gy5yzXfUzS4tb+WcqST1fuTOBEcQ8rJLSrgRe?=
 =?us-ascii?Q?I0/z94D2uIJw63gsIlwyQzAy8Qef+9Wngb/Um+y67khZcASghSERj0N81BRD?=
 =?us-ascii?Q?0ROSp7fvYzd4XgBKJmuA2KFYUX1342Pb5DPkE6g1iAv0RjR/0n1h91b0yJH7?=
 =?us-ascii?Q?nO9Ih8/y5m6nRUh2ADleVQg+OSFbUPuRl7b5PR8wMv69OdG5g3OhkhFKucGa?=
 =?us-ascii?Q?AJW+3lf9Etb4vkiI6l85CKx9aDkXn8U1akDoiC8P64x6XpZxClqjQPMbu6/q?=
 =?us-ascii?Q?p72UfBEaRLnPNkN9oxvRigBMldwuJrRoJQfe5Yy8+ysgfWGvPUVgfkf7FZBH?=
 =?us-ascii?Q?ouok5uZJfTZbCw8jtctD27OHBX2BfOU0gQYLCjCoMVfmH9gENHlL8X+laCtT?=
 =?us-ascii?Q?z8apviQ3H4uCXvh7qfCuaKxYQfxBuSOtiFaIGKpOeZXjHEsJ0l6h3wirJzUl?=
 =?us-ascii?Q?Cm7N/Di9iWcS/v0tnrsy5T5bYNaHpFUGI/jUxGL1adSY6C75IzvQn2Kq6sO7?=
 =?us-ascii?Q?m5se+ifm9kbzfUI0bGftxGAr2C6UElMZMXNkFtMPG5eAU2ZpzcA8wQQoC1S8?=
 =?us-ascii?Q?mGstgkKNhZkwNAGKthuBnCV4iqPb7U/59zNCvs8XPvbhntzHDMuCe+IAMoP7?=
 =?us-ascii?Q?2wGvhdBPBS2N5Yhjk4ezjXss6ldMdHgJhd8BkTU6QxZU20aGfjdcRMtMx6Cy?=
 =?us-ascii?Q?g1X0jzmZtbuaYG6Rcyps/UWihwpGJ1+nGXAwG9YBKBKTU6a6zoTq7ZdYsPgV?=
 =?us-ascii?Q?Gvx7KFynZris+9WBCv1U10P9GlTlf0H+f5emEWSZZIZcMo1Ix+SgKS+nsQ0Q?=
 =?us-ascii?Q?izaOzrYybRF+6CJRzzxR4J1qBMvfRi3hYeO3BM9SVJpI7R+Z2xHchOHjZPO6?=
 =?us-ascii?Q?MwrZ8PyLMK0Bj+Cshx73bkFY/k38LLAbHu64f2/+qANL3nWXA8jSemkPW9CQ?=
 =?us-ascii?Q?2ridKcgzBBomC5neRBHdQ2k0?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: befa0498-64c4-46d8-287e-08d984def980
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2021 13:25:45.4207 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i+wB3Mv9Zkmg/mdXF4BgNBsDcQCqNBMBPYValCR73p54W37wR/5xXa+hzZHlLwnK9+wxQoW2ep+s5oBOWZI64tTOJuu6BIbHjg3QcP8CpFw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1549
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10123
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0 spamscore=0
 adultscore=0 bulkscore=0 mlxscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109230001
 definitions=main-2110010090
X-Proofpoint-GUID: P10dkURY0NbzRYlRmyllOi1Wn6LyMQ3U
X-Proofpoint-ORIG-GUID: P10dkURY0NbzRYlRmyllOi1Wn6LyMQ3U
Subject: [Intel-gfx] [bug report] drm/i915/tc: Fix TypeC PHY
 connect/disconnect logic on ADL-P
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Imre Deak,

This is a semi-automatic email about new static checker warnings.

The patch 3e0abc7661c8: "drm/i915/tc: Fix TypeC PHY 
connect/disconnect logic on ADL-P" from Sep 29, 2021, leads to the 
following Smatch complaint:

    drivers/gpu/drm/i915/display/intel_ddi.c:4028 intel_ddi_encoder_destroy()
    warn: variable dereferenced before check 'dig_port' (see line 4020)

drivers/gpu/drm/i915/display/intel_ddi.c
  4019		struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
  4020		enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
                                                       ^^^^^^^^^^^^^^^^^^^
The patch adds a new unchecked dereference.

  4021	
  4022		intel_dp_encoder_flush_work(encoder);
  4023		if (intel_phy_is_tc(i915, phy))
  4024			intel_tc_port_flush_work(dig_port);
  4025		intel_display_power_flush_work(i915);
  4026	
  4027		drm_encoder_cleanup(encoder);
  4028		if (dig_port)
                    ^^^^^^^^
But the existing code checked for NULL.

  4029			kfree(dig_port->hdcp_port_data.streams);
  4030		kfree(dig_port);

regards,
dan carpenter
