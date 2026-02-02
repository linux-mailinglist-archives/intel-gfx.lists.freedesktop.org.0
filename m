Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGAuA+83gWmUEwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 00:49:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7837AD2BDC
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 00:49:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E72D010E414;
	Mon,  2 Feb 2026 23:49:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KZjEADGl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE39D10E414;
 Mon,  2 Feb 2026 23:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770076140; x=1801612140;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=B3/4Bm/3KfnUy9VOI7+DfoiXzPfRKRyD7K9MvTGAU5c=;
 b=KZjEADGlWFqhTWHhRL+qu93JpPCirjbgV5sAxfQzeXCkg722Vqr9SLjM
 YDBDkjIUjNuqUv+zyjrN03228YlI1bPYgA7d9YsKlTvahRygK5WhZuIuh
 9muvxm/ZnvrCYrplFyy/2X47CCaOC2FpWZx8nwZB00IJE2zz2i2xVmcRB
 1NByzRBSmOYEdMnaQy6vyC82OS7suXVrToTjDOWsBYVvroZRi0z3XWFb/
 iGBEksYbhpE98wfZcGN41LiqyM2YWxP2k/vfUINSiTtdQgdsQQPE4iqL0
 hpO2NhqTucwRyi+WatzvQSj72GrpdJOn+4DCRixOLwDeOjZrkebZP6pDb Q==;
X-CSE-ConnectionGUID: xlz4BhzBRIa+Wqsz0fF/6Q==
X-CSE-MsgGUID: EvxoDoDkSjOQJkRajldaQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="74866219"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="74866219"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 15:49:00 -0800
X-CSE-ConnectionGUID: NAHcZ5ooT+uIaxiiP2FlIg==
X-CSE-MsgGUID: Y7y20QO0QF6q0kzAlGAuGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="214149394"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 15:48:59 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 15:48:58 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 15:48:58 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.52) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 15:48:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TXyZDrPh3CQqKthP0jIFo5WBOLascDRZX8dOZAGH3+1ZjfnlZ04TO1DvTpgyRhP7fausOLEShHfOzrG7nkfDrb6Ui5rCUwm4Rd8Zu2UOxX8tDluH5Pi3dmb9NkQkaXM8BzXQn9m+Kmy8/MAAJYcrOj3HL71CrOUwiuY2OqagarFN4c8eD1fRWJhbal3QYiknShS0qSjEtNlJZg9pYLyCAPGuPdKShYbLuAPf6MGoA/OPaEjZ7+ezdZ+34m3ShSfazWsvfiYjUA6KfWVc5bVi1qX/PfI+MpPKulcyyXf/4CyjYndYh190TJZxcCbMCrDDiSfjU5cFa6YMMAai1Jb5nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8PPnVkVFIVMoFMjgOabNyNZjqYwdbKPpHzdZFuQJUpo=;
 b=jcFyvyQO6b+Pl04TbOuwko3OENfk3G5Uu7uX8oWN0H3/tCBLH9usPoREVMIdF23YUvUoqKAm1MZOpyImjh8jT3GygjzJrBR01h52E9rlw+lKG7FQ4tctfBCDg9qkeiCoLhYRGtVHlDLsW3DQR/iMXWFq9fNNdFUmsIQXTwS1j0YthudStPnVClV+/WM8Y8jE4bKxj9P6rajZyjrAVgwR4lpyTj+PvOZWUvdm5G5I2mZhhECVAtM6My4WfqTxC+XklwZ4f92nrv10fK+5UvXcahIR4qOgIAcoxdBWcdSCAQmS+keVlbrztuUn3jlj0CwHv02fwm+SNvcO1ZdT8mtwoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA1PR11MB5945.namprd11.prod.outlook.com (2603:10b6:806:239::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 23:48:55 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 23:48:54 +0000
Date: Mon, 2 Feb 2026 15:48:51 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH 14/16] drm/xe/nvlp: Attach MOCS table for nvlp
Message-ID: <20260202234851.GQ458797@mdroper-desk1.amr.corp.intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-14-653e4ff105dc@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260202-nvl-p-upstreaming-v1-14-653e4ff105dc@intel.com>
X-ClientProxiedBy: BY3PR04CA0024.namprd04.prod.outlook.com
 (2603:10b6:a03:217::29) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA1PR11MB5945:EE_
X-MS-Office365-Filtering-Correlation-Id: 2503b92c-4e83-4bdc-91fd-08de62b59fbc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?GRPElVJNrsxqmNqEzfIodkmR8v9+W0GLhprxHX9MmUVciTwyvOB6+oQrVp+w?=
 =?us-ascii?Q?o9Qyi7kZ+uIvz9yzn9VquXly7c0RWcS0bxyct9P86a7CCLgj9FynocMFZJgz?=
 =?us-ascii?Q?rCK3gHIFtdK2HBYRpiTyZXWHueFUt1uZhyXAXlK8vSMvW2lsTeDd6BxxS/K0?=
 =?us-ascii?Q?dy9Jc065mjFbloIbNtMVV3z+69O1GWskuA/vMC48acRNdGa+IesSR4oEoIVX?=
 =?us-ascii?Q?iNbGnOjnvaty5Ql5Dq6RZlbj1J/2cIuCbWTX9yyLtC4vT+BgXzZQDgVv08B0?=
 =?us-ascii?Q?HweSKzprHyRUxTfA6N3pIc2kTuz3xT4zwcyXOYmEG6kc6ZdfJjEqwJySK3wJ?=
 =?us-ascii?Q?CqsVBsp5cT5NI6q+6xLsBf4W1w+yG+voio5jeKuYL1s72b+3Ou/dF8HREyET?=
 =?us-ascii?Q?v0ZRY6J6UaEdVfyE5PQnRbGVS8eYjKO4NHxioOgVtEg+3j+1EWNAXFHp/Di4?=
 =?us-ascii?Q?C4hRn7wLpgUCOLSAUEiQlA8r9k1u7uJm4eaO4r8HPAkfbptoJTj9JqkooA3G?=
 =?us-ascii?Q?kAeq7HABHVGut1neWaJYnLYUcBPbeUHqzyc4CcBf0zGuCmAcpjvwmjJnsonI?=
 =?us-ascii?Q?L3c56GWLMXcT/TudyXEh3FxJnNfiS5k4sogNXukLPYDHO/Wt1NCco9MEOmBo?=
 =?us-ascii?Q?a9sXNiDWQCKdgX40DSJQ25biUYIfXM6/xZKQBU3bKGAo0hBsuo6v2jMX5KLk?=
 =?us-ascii?Q?p3hlHJ4Y9p9yVcPHVc8Z/ZyGfsNL1HgK9KFr7t+6L1t1SA9lvFdaLGvZH0Ld?=
 =?us-ascii?Q?Dy1kg9y3BQcWr76fFx4ljBC7JRPIgOd9Fc3dKQ163WBMQ9VFI9zhFEj+1II0?=
 =?us-ascii?Q?cIvfUaaPkxUHXnhgSYIdx+ltNfBKSknwXyJImXJHMBsndt6lNVIIA8zBhaQz?=
 =?us-ascii?Q?F1fLs6Et+zcWY8A+0gWsvJCLLf/SZ9mBHyOHO7F12tL6jzIE+dz+tWc38oA3?=
 =?us-ascii?Q?Ign8mOI2+V+oiXlR1W4/Xu7GznxpWIohPjJMpl7g39qldc+aHUKZL0PfUgA3?=
 =?us-ascii?Q?4TcUKm7C+LRnz5+j6/F9+GU97vM7ylckOLrDJ6pvqf48DGuwpmEv6l0uj+Zm?=
 =?us-ascii?Q?7oICNRDTqYpStNDsG2zjiEpFmusHB+JBIaIBvMEG8eHteU2Szu4sAXErYLN5?=
 =?us-ascii?Q?GHqsJeMWdbR9KeKcsi8WX5c8RwGeeOr5S5wS1VmI9uVN+0PeyjcVHy+6XrJq?=
 =?us-ascii?Q?UKvmIS2/xPfxzLxvwQjHJQn12f0Sr76wtgttZlPUoYFLcpsCsLOwLHuN/tuP?=
 =?us-ascii?Q?/ayaFFbbXrJ1MoSBow6otJVqigLTtfpdufoRWSB7U+Z7hEHqk0wxgvEWMQ+5?=
 =?us-ascii?Q?pdQoWpMgKevoCSdK83ig+KLBpUP/ZOryAjYiA8R3kiJ+iErwWBEOe6wDqw4K?=
 =?us-ascii?Q?v0aqKhs35ZI0psalkW8fordVR4AlPBxNe2nlNPbTwkPNmRguB5U4Z4dy9aCa?=
 =?us-ascii?Q?wTzMgq+PHap7u+bLFNlLZBeNYWGAqSXEE4BIUMBsAUWwEhUC2HZWp1ENJEtx?=
 =?us-ascii?Q?CRY4ETK7z/t4aCH35aHwq5uAIBuu8z8YuIrUxeGiY3GY1O0HlJtqK5Xa0bEv?=
 =?us-ascii?Q?dvDanKnb9aECiMbXMCM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aup6IgHgu6xYN6fClgWfn/j7JxvdMcm1TnyQkbij3TLBDsqo4Ute1sO3UNLK?=
 =?us-ascii?Q?+aAixBWlwIDaHUIof6k2h9c76WGsYRNkXjUYGnrAbUdSoBdHVvOWS8oitj7z?=
 =?us-ascii?Q?OqbDZnkF2GzZxLOKdAlNWkGCzn7bthlgC0VyZeXUgcHnrIAKaeE+Zpit8p/I?=
 =?us-ascii?Q?0PEPLSTRoS2VHfHRzpqgjTui8G8mD1/NwdCLVlmWf+4z6eBpwFQa49OErSgh?=
 =?us-ascii?Q?Y7AT9++hAEZiA+CwRaLEyk1JzENexQIjdZPTU7LvOl5mK+11UvB09mBVGFIQ?=
 =?us-ascii?Q?MyzUakdhawgxd6OiWsM8p5ixJVoHnD/uD1CbzzurJYkNIKqQk9JHQV/WegaV?=
 =?us-ascii?Q?TpsB7GiAfqCzLcMa3bZ+G6Bjh//g7Zuax0yFYamOnJK7sUmqRKANGs07/8s0?=
 =?us-ascii?Q?/klTzVNGyH5qx6/F8ksgrw2IWviIJ9a2q/o5fqVe0RLNQEoU2dzDyTPaprNe?=
 =?us-ascii?Q?2ciLBeZcY+EjgtdJXDW2RQsW44lL//PnZ4xJ+OEal2Wt94EceK2fjrVNnYl4?=
 =?us-ascii?Q?IBHIwZMEsSEwaF4Rqv472zzwojtEzMGFIzy00rctKcLd0aEt1llbfW3TXI/z?=
 =?us-ascii?Q?s0XoEuGKnND4vRGAMH/vQe8fy7p/n11EjtAqJ5k5CVUuwrEXXTnPsq5hE2vg?=
 =?us-ascii?Q?KxG0irt4Fs2pKH0M1M1KKuz6I/3lVMXp+pN1p6aQelpF2M4STDBjnLkCtd8N?=
 =?us-ascii?Q?taJhT95yDKD42BPaY1IwEZSlHs5Q8UhIInp+GYZSiO2Vy951Z1T5S3jhkVKj?=
 =?us-ascii?Q?s2FB0xyDfN7fFWT91x1IEDFLAK9W+3/mP+BQJMZQFQgD+6GhtPEzKatu6B88?=
 =?us-ascii?Q?AsFpRsdlfjcqG21cA5+kQXX3fUgxfm758KDlQpTt88Gwol4MfPUXuoB4e+v7?=
 =?us-ascii?Q?hW6mR+vaHSIx3xaZYMm8tMQHEZK4Iy/W+3FTU/YellwlJgVEjKTJV7HGt4KO?=
 =?us-ascii?Q?sI6g1LwLHXBGZAfViVQsJeHwuSD0GboJcnlGZJne6uRxJPnvE4vYN7ybAK+p?=
 =?us-ascii?Q?aqOkQ3VxRSmO2/vfTwbepUjJXLvshaTNWQgfv5ugP3upZxXHRiS1/AOahlCR?=
 =?us-ascii?Q?B4xbPkRMd2iWIyBjD7rqz8oTM/PGKxQqv/lqIwTbkm9GGxbdM+wz/CBg7Op+?=
 =?us-ascii?Q?qSG8mW7wbCdu2GrfCQEDlAF7F6gFAFsGkOrxa8spIN/zMDsdEesBQA0lXom+?=
 =?us-ascii?Q?uDDMMhzmOU1K7jg84Khjp0G2TI+fxfZDINww8pL+6Xl/Nl9qezZWGZBwAryx?=
 =?us-ascii?Q?GsFD0ikzg3Wx8zGYZz6huH49DNyZ41uFJI7I7p0H+du1H3c3PhYFz5HNJHc2?=
 =?us-ascii?Q?NroBiAp6WuCA3IJGekDkrKyyRDQnav2Z3y53pSE93zNnHYS7spwRQF19dGFE?=
 =?us-ascii?Q?uBA9Fg+9VCZsECvqifIWYe608HManHvUyRjzovhOPkiWR9ZbvCUw3n3iLzVT?=
 =?us-ascii?Q?aA3YAb6fKD56PppNrpjDavqniT+1racE4/ZcFWHQdI4tYWX3H7njiu02QojI?=
 =?us-ascii?Q?opuNT92mZ+AapTjuJgrA3YhS+OzdkavRGSatYTvz1iyyqDZPhFAZ88AmrW6X?=
 =?us-ascii?Q?/O9hygJjxwgRBuZ8w4xScpN3WCJwjb8B+Z5KtoGMZEN5QAAAsbBWj2TCwJtX?=
 =?us-ascii?Q?Ek2f6BfUsVUfZoIUui0D4b3sccWTFYV9QoNn937acx9V9PRVczM9be2+8JSu?=
 =?us-ascii?Q?sLLWIYbbcqxUucmrX4wXPiw+tLc1C2YEimEFrXbTW++m0rkOneBDWOD8knjT?=
 =?us-ascii?Q?D1X5W7p1TiNivCXJ8c8FC+02bHUqD5w=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2503b92c-4e83-4bdc-91fd-08de62b59fbc
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 23:48:54.2975 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EgKDex7arcWTdo8Tnd9MursqTI60ceDZhQZnHc9aJWotemboQ1pWS7IRKibt/pYUWsNWzOE2AWjv+fCLTqY/Uopv7HYavAtNhNiLmD9NN/Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5945
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mdroper-desk1.amr.corp.intel.com:mid,intel.com:email,intel.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7837AD2BDC
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 06:43:20PM -0300, Gustavo Sousa wrote:
> From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> 
> The MOCS table for nvl-p is same as xe2/xe3.
> 
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_mocs.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/xe/xe_mocs.c b/drivers/gpu/drm/xe/xe_mocs.c
> index 54822497c21e..1d19df860bea 100644
> --- a/drivers/gpu/drm/xe/xe_mocs.c
> +++ b/drivers/gpu/drm/xe/xe_mocs.c
> @@ -600,6 +600,7 @@ static unsigned int get_mocs_settings(struct xe_device *xe,
>  		info->wb_index = 4;
>  		info->unused_entries_index = 4;
>  		break;
> +	case XE_NOVALAKE_P:
>  	case XE_NOVALAKE_S:
>  	case XE_PANTHERLAKE:
>  	case XE_LUNARLAKE:
> 
> -- 
> 2.52.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
