Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iL81I7W6nWklRgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 15:50:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F06FF188AD6
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 15:50:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 734D810E5BF;
	Tue, 24 Feb 2026 14:50:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P0UA6ao5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E58C10E0D4;
 Tue, 24 Feb 2026 14:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771944626; x=1803480626;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=I10djeIJg7O2ddvGeziTG/bnQkRAiP841RmxFA9dvuQ=;
 b=P0UA6ao5kUku/uM5uuUVuOEgjRkxnZGPIrGEhgS/khGkgILT+HMgtYhF
 Wfdh9piSNy5HVkpCvS46mxtFrU7hWWrHar2qStX3VRpysswLb9CvBQ+Iu
 qrhx/mU10AuFT0TMVMsM78hBAV0o/EpGZ3mxmsyk3iqsujkXJXE4W6Pca
 +rldpIAbOW38CUdTEr9qKlHB3JcCl/h+JASapoRIcn5HOw2gZhuKySaqE
 ddBGPWBuxIRsxcHbsBkyjPu8O2HB1WOuh0q2UIS0K4VNG+ZDvsLxiuNWZ
 0SpF6qJvLBBwHVDJ7w9U3XL1Oj6iwPNadbic6TS3Mej8o1qizoTheZ//Y Q==;
X-CSE-ConnectionGUID: 3r04sTM5RgqbthcDlNziKg==
X-CSE-MsgGUID: pvNfs8pwTmy5diIMHmcEDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="90374382"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="90374382"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 06:50:26 -0800
X-CSE-ConnectionGUID: bW4e3hxTS0O23eXVJIWXxA==
X-CSE-MsgGUID: 1QTjmY3QRECAYapLOymogw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="214759466"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 06:50:25 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 06:50:25 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 06:50:25 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.44) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 06:50:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pGt2CcKF/DUy194mUwsJLP9KmzfclYsY2Obx9rwr47zFKyXdQuAW2ZiII26OiTC5Gj8edLw2jW6mNEPNQXVD2ud9QhohAE2ZsCnTa1Y0Fs8gNNU7qakzOxzIIriuBhdXWqJ8AGW49mToVwDKFhCBu/ULuYQcIMwD+GSHi57Kh29YXbceUtSyaDsO9bq54GpK7oKIDINCR1Twh2AgAs9DEe+kyejgTMydKW56yGmiRwHzqsOvTZsoBHj3P+mkDRb89vG70WctUK/slQ4h+OI0EHdI0ErydD3FlIP29jt7T76MMgPwuDWhUW3bsrGoQiKczV3VQOyilPM/y3MRN/eh+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VEX0i0WOmF1d6EO2N9cO1ktcXuOCfBMkUGCIxgNh10k=;
 b=wFNfBRoPvtrZCRkXbrb16iplegy4dThbo/lUipGVsfs4iUXolBPVh6gwQiU7di88uusIMtWovZC6U+ToP8D1vyC3IlsKhrfvu6q6NzJqkYnBV/tvMgYFZXw6djG1JmFiAvR5pxZSH/tyWxlhLVIj+QDj1l8RMP9LMbJRKm/QO0oELj7qb5A1m2lJn7B0pFP9bEY5LpA+OQMX8mcdoY5JLXOKUjEbl/uKEkYjEYQ33+4yA/s+FxF/soupdHop+jPE+jEX0UPgfz/Z+s+xZOAslXvbTxx+5+3P9soetvygTMGd9D1B0cO4XEeln5OxMW3T2Xesg4/t3m5Auh5ZkB7xaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA1PR11MB8574.namprd11.prod.outlook.com (2603:10b6:806:3b1::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Tue, 24 Feb
 2026 14:50:22 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 14:50:22 +0000
Date: Tue, 24 Feb 2026 16:50:15 +0200
From: Imre Deak <imre.deak@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>, <jani.nikula@intel.com>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCHv2] drm/i915/dp: On DPCD init/caps wake the DPRx
Message-ID: <aZ26pwv6M7gG4W9D@ideak-desk.lan>
References: <20260219094326.34922-1-arun.r.murthy@intel.com>
 <20260224074831.374990-1-arun.r.murthy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260224074831.374990-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0064.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:270::12) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA1PR11MB8574:EE_
X-MS-Office365-Filtering-Correlation-Id: 5458394d-59eb-43d9-f931-08de73b40916
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nkrDu08JCDK8rXUZvTkZMoM3aIix0WHfwRgK5ATZ9Q/DEKnKiemOAou/iRJ9?=
 =?us-ascii?Q?gzkQ87Hdwpb/YudGCyEQuUMLWL4Guwe2T6Dggk8G+uUgVreYc2NfcntCOr9+?=
 =?us-ascii?Q?/2EwevL1dhCkHcvOmvpgK2WtW8fkVWrMXbTl7swlWmb2QS9tEATJilCL5qqA?=
 =?us-ascii?Q?fVJGpXx2XU1Macdb8GLOB/fv8kz4zN3RGnwA/SFR2iphFa7HjbsjqylU+Zmi?=
 =?us-ascii?Q?eSItA+HUWlXni3NhicrKZVidCjWl6hcLDHdsPhk8yTpLGRySeoAlix0/9R4g?=
 =?us-ascii?Q?Zccft4eshwZG98jHjY8q+32DudKADTmf6Ee3wo0SK+5Ynb4Kl6JDk82It76k?=
 =?us-ascii?Q?OVV9UQ7kHuVu0q0oCwgpKD7gf2TVoPZrrkjXfRBzie7hixNu6Stacv3u7fR3?=
 =?us-ascii?Q?OdhB4KwYVXz7bI89MINV5zL4108+NghKWQEdQe8vfve3xkEZsKKD4hpZjLAz?=
 =?us-ascii?Q?iy8+3aLX2LEqVFwcaijh+QrMTo7/TA9YgEDPu+18gnrb6qALVEWarn5V1leb?=
 =?us-ascii?Q?GNzsBc9em9nP8J1sS3dQmMoG+pLcZThuVk6St9S5rz0v9lhBKFpYy5H0ytnX?=
 =?us-ascii?Q?56Gvbo97Zsm6F7hLcWDX5wUfyDw6c0DQfZACBIJ+fpcHnX6f4bPUtbQFf48B?=
 =?us-ascii?Q?zvba1VulPggEXFoq2P08XaJUXlvfphEytcc24vzJv+GFx+NoTyptmUeUacvZ?=
 =?us-ascii?Q?9sGRpU/7XeR4g0MybYpEBIoIrY3g80kuSDO4Zt/3voB3ugbOoJxmDNiqpInE?=
 =?us-ascii?Q?d/PNSIj29f2WJVATA+1s3chshvF6wXslHxx0fjZ+KfZtna6yxuqwP64S7xXp?=
 =?us-ascii?Q?L0N9zHLuNj63YLA0Yro2QT1+9jAowR5tnUmbKQgj7ozqWYxHURPDqaU1CLpv?=
 =?us-ascii?Q?hFkL9KXIdJcm+3IH0R4YpmWOQvAqLJk+6JqWGo7vfGtwWr2ytP1J5KAPtAvy?=
 =?us-ascii?Q?htsbCAKDJ5MCtdrC/R228UCyRM4VdMGQTdJfxKiXz1BucHYEdDuP/Pt1nAE6?=
 =?us-ascii?Q?slzbPOy2cbd/y5qo5zinOHfeFKEPwFmTfhIU1M+PUCibg+LQZMDM79+Q81xG?=
 =?us-ascii?Q?/HhaZBZS/Act1jCd2SIy3S25Ik9WhjggM8mJBu+zzLmZtjl3Wd1aUCUebi/A?=
 =?us-ascii?Q?imxjcBKKNwubvekDz+np52dUim645uVnay31uAsVrIm/FB1Cowha9Y16GGXQ?=
 =?us-ascii?Q?TLB2HPLJz+obZqUWMFgoGFLK5wBA1otinJJaGndeI6YRA4OsyFdlnpIZrJ6X?=
 =?us-ascii?Q?wByzWK8zZUx7euWak8By9AmN/R47zzMIfPdb7Wzd5LBcQrEUO9PL8LQUKujA?=
 =?us-ascii?Q?MNKyEBnQ1DBzjwuIvgz16h9SAQeKhJSiXN9cB6TTnlJtobiIjaOH8oUtX3jk?=
 =?us-ascii?Q?BIpMaaSNmWiumTu/3ux+QtEAxDHD+hxKjphn+gm3VcCti9zAi1lxN5kRziZF?=
 =?us-ascii?Q?Re1WISIyGY6MAfOyCeN7nvB2av7qtCYmlrNOJCtWSd2O6yJ41S10ykp12CiE?=
 =?us-ascii?Q?nOQ8Gvhgo1POnZZ3vLp+Wo8d4jBPs3MVUzIK+xjp5x8BJH902fis87slXK+O?=
 =?us-ascii?Q?40RkrMFh5PbTex8ZDTQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yRBOBhM5mQvJMSb6P5/5cAeUhEOVa7hSH5b4d0y+JOO0ncZPhESMxak4ev/b?=
 =?us-ascii?Q?37Lc1MUu8dJb+isXBXl7Oi0NnRGHclghAKVcHd7WZox3y9Lip3VwEYbCFlU9?=
 =?us-ascii?Q?I5YGgS78vE+eDGOLh7gQcKhq//MzOnPgzurLARjbtYtTGKfF2ujsB+xKw64k?=
 =?us-ascii?Q?j9g5EWHNHNrad1Qye7exONC3vXBLXofT2k1qeOYkok8ovy4jAfHV4s5Akqkc?=
 =?us-ascii?Q?VXWs5t1QCidijNtjfMO6Aanp2ZMlEsIsgmLqG8tZ/tO4a2H0VrVTP/oMtjCp?=
 =?us-ascii?Q?rkYY7CIR7TAadm4dr7IrQ7FEUxVTETZFl0LmvpMnZF1RhJdSJObjg6Ewbxl+?=
 =?us-ascii?Q?vvpnJ5ymBebw5TGH2lM/VUgBY+OkEZzMF3uUTIHUaEpq3FMsy9IDcaAgPe2B?=
 =?us-ascii?Q?DVaNsTDFtq88S7kxCbpAaKHakzhuAJbApD1DXj7CxM3UM/kHwW4QeqLoiUtT?=
 =?us-ascii?Q?8ED+6AhXXq7t56Y1k79MT5nQI5CY0+MyxpoDRX1h2es0CkyP3L83NyaexkBu?=
 =?us-ascii?Q?cjer+/AA9vIZN9UltYza80pLeLkcND1M/ItqNFBbkABLWEJ/F3s64c86eOf2?=
 =?us-ascii?Q?f3n0c6JkKoWbq1lTrxvXtTRlN3tXc/hadDnEV8L3Bx8EMhuWBkKIxJo768u1?=
 =?us-ascii?Q?79WrwiT+tSdz1nf3ICZvjbs9598xY+0bYtkfDRDauWGxXLhy5UxHf58ccXro?=
 =?us-ascii?Q?T2uOeeLjCn5Ls9N/CXsHVzhigr478VXCQCz4F4jtq8UxK3tpq331GT3LluEQ?=
 =?us-ascii?Q?GgZMxn9Trq3ENhETMxM0n9acLQvgamyV3suLGqfPQHg8Un1zAlOU3C1WiySY?=
 =?us-ascii?Q?gTizqbjYNI2PezNgSH2uaTV/WYNPKK1BDRi1Rd98vfzy9YtcAdrkBKI3RRCB?=
 =?us-ascii?Q?wiQeXVqP+fSNYqg0E8fIgruwAf3e/gIdSuu3Pj5PTlsSVSXZNzyiB9PTeRGd?=
 =?us-ascii?Q?cFN1OUDTHonPc2eUCYNwjWNwaJvSIDj8BYxR0bLufeo/lWkNFlMJFHA7cS/k?=
 =?us-ascii?Q?q9k1MM9g6xdFzQUDmeN1hHT5S1D7JZx939WTheYW8ER+BfYpboCSygVbqhtP?=
 =?us-ascii?Q?7roAj7BwPpc/5uqkEzGWhpl7re8TZC4mRtVbdCd8m370L802yTWBHlebmXQr?=
 =?us-ascii?Q?SvVL/g5rNqxJsLH6jUSReB55WAC5R5WzSxrylUU8lS7r85CQ0CHx+/EgjHRP?=
 =?us-ascii?Q?Sm1lXUy2HSfAP8F5UU7gxPzT3lvw2z9E4It3agN83B7jdMQxa9BjBT+xyNla?=
 =?us-ascii?Q?nYBG0IPwtIfM56CDBRp0t56JKZvZB/2GUy7ncLA8vH9KrqBz+fBLi5P53tIS?=
 =?us-ascii?Q?ELCEarEEoHpizurs/+X0SuI2MNGnevbgOzx3cH12EMrL61Jze+MpjS36IINE?=
 =?us-ascii?Q?zqXwAA2gvAU6kbjsDcHtZWcqT693bKNq0f7yQfMgwN8Su13YHabxhyjn9frN?=
 =?us-ascii?Q?ht+mFza6Qch9LeFGu5Jnn9p90fPI9xuY/FrbUE6H5ldCmAYhAtjJSWGlqx+l?=
 =?us-ascii?Q?qvYv8a+7wxsyYI0eEe0V8BhCs5sZjDajvSpC5dNC2B7Ac/nRphARIihdKv9D?=
 =?us-ascii?Q?Hr4OJTub4ty3/xXrR4pIsaz6NgdThwhU8MTc507VMFsMKk5CoRIFYMZIkeV/?=
 =?us-ascii?Q?Z/XS5o/uTLZDClYY0SSLfovGNbrJZj5RICV5XPx1YLuHtVj6FhkIFMuk5KHE?=
 =?us-ascii?Q?TxPeKtxh/nLRcvAKBo9qS0vn7UHj3j106G9J4b5I6BHk0QcesyLAWwkC4F7t?=
 =?us-ascii?Q?GyrfMII7zw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5458394d-59eb-43d9-f931-08de73b40916
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 14:50:22.0581 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3qCuv1dd9WKdVtV942NhbG226d4F0DlMjIn5rXXAg0ZrpXdOmyTL/gvmkDY9Yc0T5/jNFpWYYSxaKmhjNtyPgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8574
X-OriginatorOrg: intel.com
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:replyto,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F06FF188AD6
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 01:18:30PM +0530, Arun R Murthy wrote:
> Its observed that on AUX_CH failure, even if the retry is increased to
> 1000, it does not succeed. Either the command might be wrong or sink in
> an unknown/sleep state can cause this. So try waking the sink device.
> Before reading the DPCD caps wake the sink for eDP and for DP after
> reading the lttpr caps if present and before reading the dpcd caps wake
> up the sink device.
> 
> v2: Use poll_timeout_us (Jani N)
>     Add the reason, why this change is required (Ville)
> 
> Closes: https://issues.redhat.com/browse/RHEL-120913

I wonder what should be the rule with non-public links like the above.
For instance, we do not put VLK-xxx links exactly because those are
non-public. Should/could we demand that RedHat opens a public ticket?
Jani?

> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c       | 38 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>  .../drm/i915/display/intel_dp_link_training.c |  3 ++
>  3 files changed, 42 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 025e906b63a9..fa0730f7b92a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4705,6 +4705,42 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  	intel_edp_set_data_override_rates(intel_dp);
>  }
>  
> +/* Spec says to try for 3 times, its doubled to add the software overhead */
> +#define AUX_CH_WAKE_RETRY	6
> +
> +void intel_dp_wake_sink(struct intel_dp *intel_dp)
> +{
> +	u8 value = 0;
> +	int ret = 0;
> +
> +	intel_dp_dpcd_set_probe(intel_dp, false);

Is there any particular reason to turn off/on the probing? I don't see
any reason why the DP_SET_POWER polling would need that. In any case
turning it off/on this way is not ok: reading the DPRX caps, which would
call this function, could happen at any time after a sink gets
connected, so turning probing back on at the end of this function would
re-enable it incorrectly for sinks where it's been already established
that the probing workaround is not needed and should stay disabled.

> +
> +	/*
> +	 * Wake the sink device
> +	 * Spec DP2.1 section 2.3.1.2 if AUX CH is powered down by writing 0x02
> +	 * to DP_SET_POWER dpcd reg, 1ms time would be required to wake it up
> +	 */
> +	ret = poll_timeout_us(ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_SET_POWER, &value),
> +			      ret > 0,
> +			      1000, AUX_CH_WAKE_RETRY * 1000, true);
> +
> +	/*
> +	 * If sink is in D3 then it may not respond to the AUX tx so
> +	 * wake it up to D3_AUX_ON state
> +	 * If the above poll_timeout_us fails, try waking the sink.
> +	 */
> +	if (value == DP_SET_POWER_D3 || ret < 0) {
> +		/* After setting to D0 need a min of 1ms to wake(Spec DP2.1 sec 2.3.1.2) */
> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
> +				   DP_SET_POWER_D0);
> +		fsleep(1000);
> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
> +				   DP_SET_POWER_D3_AUX_ON);
> +	}
> +
> +	intel_dp_dpcd_set_probe(intel_dp, true);
> +}
> +
>  static bool
>  intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>  {
> @@ -4713,6 +4749,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>  	/* this function is meant to be called only once */
>  	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
>  
> +	intel_dp_wake_sink(intel_dp);
> +
>  	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0)
>  		return false;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index b0bbd5981f57..3f16077c0cc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>  bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>  				     int hdisplay,
>  				     int num_joined_pipes);
> +void intel_dp_wake_sink(struct intel_dp *intel_dp);
>  
>  #define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
>  	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 54c585c59b90..cbb712ea9f60 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
>  		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
>  	}
>  
> +	/* After reading LTTPR wake up the sink before reading DPRX caps */
> +	intel_dp_wake_sink(intel_dp);
> +
>  	/*
>  	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
>  	 * it here.
> -- 
> 2.25.1
> 
