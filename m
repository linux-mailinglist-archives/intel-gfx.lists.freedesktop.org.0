Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 034C23C8232
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 11:58:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 563336E1F3;
	Wed, 14 Jul 2021 09:58:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9F226E1F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 09:58:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="210135914"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="210135914"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 02:58:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="413236319"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 14 Jul 2021 02:58:01 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 14 Jul 2021 02:58:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 14 Jul 2021 02:58:00 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 14 Jul 2021 02:58:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UTtJTnON05dau9L4z7rujcxvbzrcn4ckIy+1x4/Z9pC0QPv2zLWPxhoV1W2jr5N4GDSOOVyF1Q0U7jRevUxZSq8bXWhnDbuYaET0RA7YFtsmDidwJjqQg68l1Zi2xWngXu7z1S8kCX6Vn5bC55QDJituAGhy3P/qx5Q9Am29Uymu2eIpGynE1EzI10WPeUgFMY6SBSo/owFpZNuL1eQbk14u+qUd5ACBNWDEuaDdYr6ZVHbh/R0kiO3dFWBcpOQA1Ov+Vn5rxucl+tB5nMvNDltX8ArPbg7/+BRnXZbcVF7ZoLSa+jcej3icpsP9tR7aYaPbvxQcA9mdeaT/1sjE/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=olmhzLGe2MljeC4yVdW2/yD4OL4CuC8SPutLP+fQJtk=;
 b=JpsesXs/1g2RYaYBep3lUGs65Carwg5NvRcJ/07Z79sYVeuFOUhCR8WYWerBkl3OW1XWF8xWOEvTmrBnh3sTOI3F+x7k77c2stPqsZED+awzzoYPtJ+onhnUZC0mQEGtjvlbHqvLXd5RoeP+w5NwGk+o2RZApmF4tsv3OwjyMv7Z7xEKaR1jRelLsQTF/wuBFHQnYPYDJCQKGT2dhvSg3OpNhqvLZ/ji8JDZ+UNO3gd9P35TxL9vcj0GhPuWA+DWqEi+yGHg3Sh647BX4Nzz6gQbEr1WLHyn2RErzhyapcAheQjyDmnWRmTX4r/GB6zfWCu+CJmDPvOUhanb+5PLvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=olmhzLGe2MljeC4yVdW2/yD4OL4CuC8SPutLP+fQJtk=;
 b=LbmKq6nN2XVIhoOKPT5b1lO6+/jwa4xh9HaW+elRXbCmjLllZ9yW/XL/vj+EUpXlCybi7MV8MVkz1xMkAn8LsUZ65Q0Be/44rMqiBaIOqDUM3nHDAM0i/68gyt3ekMs2asDQOHhzU7t2JSD4E91RB+Em+pcqHkaST5MXZBhAupU=
Received: from CH0PR11MB5737.namprd11.prod.outlook.com (2603:10b6:610:112::11)
 by CH2PR11MB4392.namprd11.prod.outlook.com (2603:10b6:610:3e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.22; Wed, 14 Jul
 2021 09:57:56 +0000
Received: from CH0PR11MB5737.namprd11.prod.outlook.com
 ([fe80::c47:5ab1:a0ac:f5fa]) by CH0PR11MB5737.namprd11.prod.outlook.com
 ([fe80::c47:5ab1:a0ac:f5fa%6]) with mapi id 15.20.4308.027; Wed, 14 Jul 2021
 09:57:56 +0000
From: "Sharma, Swati2" <swati2.sharma@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [v2] drm/i915/display/dsc: Force dsc BPP
Thread-Index: AQHXdAHENIMNvFib+EqQ/vsrzHRcwatCRPrg
Date: Wed, 14 Jul 2021 09:57:56 +0000
Message-ID: <CH0PR11MB5737A50F679C1FDD90E169DDAF139@CH0PR11MB5737.namprd11.prod.outlook.com>
References: <20210708102549.27821-4-vandita.kulkarni@intel.com>
 <20210708140104.3357-1-vandita.kulkarni@intel.com>
In-Reply-To: <20210708140104.3357-1-vandita.kulkarni@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0d071b7d-3f58-42e7-1fa0-08d946addad2
x-ms-traffictypediagnostic: CH2PR11MB4392:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR11MB43922F7AA3EBF726DE909538AF139@CH2PR11MB4392.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bvLbfCgCECZJ+1EAg0djXHqIfY0YVzUxTlKo8e+YbWetNecJuB4tFrlxfQBhWWBB9DDpSEVdMhC3ENV5ZH2ZKEMjMJrFJ5TsyOlzeovxBXy/2Y9nfuPA1Yuu0IxCSDda0efcRVdeOQdGf6Zh+QTpGwbGKa9ihFi5y76oTU0qf2N5itonmNYQQa1Fz3+Gy9znOD0Vo8JvCjLUx+OVzXSAh6Ju0IqiXQT5tejQuWStSITDckPhXcdBlvPFHGAn3ap+l5njB8JKdLwlIq56ESHXn20R4R9BF02wTNivkgZXevBEgBzDLLgu1LHAo7tWMidh4Ea9kf9cx+VNvy4Qty1ZTj2KBDwFhKotdxFmEVRAw7Ulpx7PjkHFC51XM0ECtJyCcvhDYJ38Quv++rwjjMoTzxFI1Z5lVDFgY/TnLQVkLFvInYQvqOg3j+xkXB3nxWzV7VWLTlg18LBtUNFByk50sT05W6zKDWzqU4RTLF14L5pOtZTn4A4VBVnmB6R7y8RE+sAE+VKzO3pIaZupWLdiYaFgsvpJlM2mu/rhqhTiQwrvwcHHRqkmOImc/xrnNeL9KvTHIye4Vs5low1sQtABKEs/ZV2ngMFrpDbrJpHZKi4/1RKXp8COzQJlBjSVeOcp0tADfec0ZTgtyxxlQ9lmnMbgf7HycPqjBlBHn6JPqyykTsHkI4t7LQ0Ug2r3awDvOQ55UxsHr0P8X2dRFhxRpg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5737.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(376002)(366004)(396003)(136003)(26005)(71200400001)(66446008)(83380400001)(64756008)(66946007)(966005)(66476007)(33656002)(38100700002)(66556008)(478600001)(107886003)(8676002)(8936002)(6506007)(53546011)(110136005)(76116006)(7696005)(55016002)(186003)(316002)(86362001)(52536014)(5660300002)(122000001)(9686003)(4326008)(2906002)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yUHbRzagAokoE7176HgUqi2nMnP7jx472QfqNPQp32CurXuQcp9ZJQcMn3DN?=
 =?us-ascii?Q?Y5qNXFlVqZ8Hew7zdzY0mTXTljkdnvlxbh/imY5zBTPCpmPDJY7wH5CfzJEr?=
 =?us-ascii?Q?Yde+DbT/eldYcqztYkQIDfKQio3B5dli7CtlLwiO3XSFf2LZgNqNNhNGhGZC?=
 =?us-ascii?Q?33iKM0X5xC6ujz/EOW2UV+yG6VnLrVnGIC4TbMr+CxgFH/mXrtPJ6UTx87zH?=
 =?us-ascii?Q?QUkbfJCYgIFWsbZiZ174cMGj+tGfGtszGDHOpny3x9f6TWCw0yfFUM5oP6gC?=
 =?us-ascii?Q?HZeN/YVNrAQTcR4P5VDwhpMj6leMCnhFwXE9qWmLfHK/lPBrB+TfqLXM/gJp?=
 =?us-ascii?Q?OHVNQhH65aAuaXE5dnEP74d1Dal1bMvjFKNOVKo0nE2XRlo/9qYJzeUb7ajZ?=
 =?us-ascii?Q?e2tFfX0nqdIpEmJ4mgAETCXt3r+kG/oJ+8uCx+RGJUhhuCMDniIMs+KbfwVS?=
 =?us-ascii?Q?K059cWCdjUENupvJSvdut+qHu0k7tf9jihYEOqiFFTb7a+iEWOhaZn97pOn9?=
 =?us-ascii?Q?ZkXY/J7mwuuGXQLjUUKaQZ9kds2DypBXCSRS/cDcRm1KXilrUUFdGwopnr4F?=
 =?us-ascii?Q?DpRhJdCFMAuCxlxoIW39DX5q3jn7SZXm5COdMxtceWJxrmDdl3LcUvC0vqLS?=
 =?us-ascii?Q?qvtVq2JQKThBjBB8/wQ7GOGmoI2bbk1GFZ/87SdL0tk809/FsL8wRVk/SvlJ?=
 =?us-ascii?Q?UoKMRC69UxhAruJFibXw7RzRhxKfO3KWt0S2KQYmZHvR//rZXG6NXbsMzGte?=
 =?us-ascii?Q?7vsjOvCcAqX+z43ieus7Mi7vqk35pYW/PeQn8U9lghpmrWODAa5X7w/gOo20?=
 =?us-ascii?Q?9CI2viICn/6jT0kQ5kMRCTyx1oWroe3sToYMAgceFoVz7wT92u+0+ePdXGom?=
 =?us-ascii?Q?IVNj6ZwxlQPArqfa3Ye1l5mN+wdUrmcffzVgurfwrTPxhDbTG08EzcrJ8zKH?=
 =?us-ascii?Q?1GMsmumULYygGoijBEsXEFNQUMMTEfbPrGknbUWlo8SmerSU0ZnQhNBITKSZ?=
 =?us-ascii?Q?vomzz/smx/UlGWylX7LPn5ANj2jiJaZHvCjHKdZWWkfZGFfQM5pi07pSyr6T?=
 =?us-ascii?Q?FbboaomtvOiJDREKhdj0a+fuhPDdovBVeN3XPTj4GxEafx3WoFO3J1Jb01PX?=
 =?us-ascii?Q?nozxo+dhZCFdGWb+FypK8A1ObCkmuUOo1/zrw7EDqaVmmIgnFyMTn9p1/ZMF?=
 =?us-ascii?Q?jxyWTufDz8zYiyNvs+6wMzNpPjdDDbw7EKDa3oKySqjQBQQJkXpEbv3NmFBY?=
 =?us-ascii?Q?jBRE3RurolYVllIsn5T8OVDseNcn9/EHRRZ+q8CA9SyOUk1hbhCbI8fzMTrj?=
 =?us-ascii?Q?ck2C2zUdX2bDheZ5KBt0NXEU?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5737.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d071b7d-3f58-42e7-1fa0-08d946addad2
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2021 09:57:56.2752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: icaoe2hqI2tzxoKAQJ49gg7yshsiZ41Tm4weRLJwFRaxkDSvDBou7S5Rn8Xma7Oy16vtNNJ3ZPTX5QO1VAWg8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4392
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v2] drm/i915/display/dsc: Force dsc BPP
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With both review comments by Jani N addressed,
Reviewed-by: Swati Sharma <swati2.sharma@intel.com>

Thanks and Regards,
Swati

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vandita Kulkarni
Sent: Thursday, July 8, 2021 7:31 PM
To: intel-gfx@lists.freedesktop.org
Cc: Nikula, Jani <jani.nikula@intel.com>
Subject: [Intel-gfx] [v2] drm/i915/display/dsc: Force dsc BPP

Set DSC BPP to the value forced through
debugfs. It can go from bpc to bpp-1.

v2: Use default dsc bpp when we are just
    doing force_dsc_en, use default dsc bpp
    for invalid force_dsc_bpp values. (Jani)

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5b52beaddada..c386ef8eb200 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1274,6 +1274,23 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 							       pipe_config->pipe_bpp);
 		pipe_config->dsc.slice_count = dsc_dp_slice_count;
 	}
+
+	/* As of today we support DSC for only RGB */
+	if (intel_dp->force_dsc_bpp) {
+		if (intel_dp->force_dsc_bpp >= 8 &&
+		    intel_dp->force_dsc_bpp < pipe_bpp) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "DSC BPP forced to %d",
+				    intel_dp->force_dsc_bpp);
+			pipe_config->dsc.compressed_bpp =
+						intel_dp->force_dsc_bpp;
+		} else {
+			drm_dbg_kms(&dev_priv->drm,
+				    "Invalid DSC BPP %d",
+				    intel_dp->force_dsc_bpp);
+		}
+	}
+
 	/*
 	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
 	 * is greater than the maximum Cdclock and if slice count is even
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
