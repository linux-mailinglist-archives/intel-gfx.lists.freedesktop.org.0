Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKlHEQu3y2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:59:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99106369335
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:59:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0C0E10E387;
	Tue, 31 Mar 2026 11:59:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H1omBMUg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BE2210E2B6;
 Tue, 31 Mar 2026 11:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774958343; x=1806494343;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KH6rSDpHswE4hkozWuawRe5CKE75nfgPKG9kXEANmXk=;
 b=H1omBMUg156vbl+aG8l8kX49ynCjh1LseSPU933D3WVjuuktbtOaTiRE
 imDByJ20+4Atec+Yf+62LRddJrGjUIj3BNl8WjBXyhiQFbveWbtPkLsOt
 4Orglr71Vmx00TxHgfX9B9WTyhsM8ApMqOMLbRqJ7/NuCqaX983G7fZZ9
 FlsVNCAqwKnG0pg1sSYxyesTqM4hj4cvZps7fwFzaPOMGsokGw7l5NlWH
 7YU6XP7QkRXWdgR/q3g8fHmeFtDesIvopdg8F7m2AibMBEzrR6awx86xL
 35sss/6zr/dwkqnaG1EjveNe9cpCGwn2S2ePix/Z4D/mWwy+8IWVfmIWW g==;
X-CSE-ConnectionGUID: ni3ZJzRPQYquO9+KsUAvXA==
X-CSE-MsgGUID: lccH6N+qTd63LTfBm9abDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="76160695"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="76160695"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:59:03 -0700
X-CSE-ConnectionGUID: B1MUkO6qSeGwlcNxr9jWzA==
X-CSE-MsgGUID: c8J6OPITQNivIYkAjLklaA==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:59:02 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 04:59:01 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 04:59:01 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 04:59:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YW/8w1YRsLxMy6zZxfFKseApFDYk+vdyNLd5+i2Y8fQuAjTyIRpxYyNZIpdME52Sng5+EfeNfH9naYyHFPuIlxwwMKqMxhEaqafFY9zlrGzB946QdQqEdWlmi6MEnujKSuk3IaKUS7Od7+sDueiJ+48PdKIoAPhuZr4KgnwW8T6htbiaqN771STBL1eP2FNcZK3ZntnlL6ALC4UzX6lTdjoi3AGtSXUOzyYxi94CDVazIyPqunF5VvoLi+THU0hwmuupD3QofD1Ryd19c0Ivi+wEuu/cOd28sEXYfuGsLRourcZXgfe6fCWSZg+H+M4oAMQhDFl0+JnN4LmB/AhCsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GgCewbWv9+e18xsCXzgv3su7dVruResyDLHV01e35Gg=;
 b=ZTzvx+TMhSjCDt3ZwsCrMKhaKpcih5D9kFE4KrTf1IscjFfgndFa9Q/exBZzLv/4JngSH/6vDnsKBExetj1eZmNA8x67oIa1jG+WPOHtMXyF5lC7ix5Og2gQ3MYHOdDbMS5h3d8XqwmE5LSCzdFcNBgLzOCYSxCkN1NHn7xJ2Sh558vKhxhDwk9YzYtgtz/deuzafuKBj3uIrTPATfPGNQo/YlSuf5PDCIxFSPr2t39I85jdVDBuJBBvWhwYa7Dtu0vIjo+NYWJ5YaKL5SXWbNY39Chkyasbc13Gt/MTtJHQOEIsRf+ETwZix04BOkTwd+D5Tywroz/ZvBLYf2819A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB7325.namprd11.prod.outlook.com (2603:10b6:8:107::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 11:58:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Tue, 31 Mar 2026
 11:58:59 +0000
Message-ID: <e3914ce8-b31b-41c0-b190-369b8c1eb5ab@intel.com>
Date: Tue, 31 Mar 2026 17:28:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/19] drm/i915/psr: Program Panel Replay CONFIG3 using AS
 SDP transmission time
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-16-ankit.k.nautiyal@intel.com>
 <acrG2DjG2u0qMb-A@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <acrG2DjG2u0qMb-A@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0014.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:177::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB7325:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d4a9270-810d-46ba-9a01-08de8f1ce468
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: /yTiAv6IDGi7SiKhJHzj2mETwJUgtvOfyPPJAIrsa4wzhk5p0g4Sk8LmuzGm0Fi8rg/MjXcd+vKDQM3kyfi/9agjnDGHh65vZ5I1psWX9wg/bgj+2XzZ7Fm/PtdsDVdC/4jYXJ8+yxOlxyd49F8PONs+dYAoDjoRtaJtOjnBC5BAJpgngFbf0iHFM398dqLZF0kxhMFC3vH+1oIIIAF+Yv6cau4BECa8x071FQraVW6xcG4mjCyZO9OMOeJbppc0/wY6EXJsEO0Nhfyla27WWq6GFdcnjBu6Qq66LtIOVTaQdl8Db3rhuixse8M5SnTTWPUaEpWEEdh/g1aSPZ+dLbbvG8iyDrV1bgkpjACMvfW+svfmtz9E8+UUZHBL4/AECDp0tLUGCtReZ63XSw0ILyKYnpdSaK1rInPv3BfMIb3d4OLDtinbr4lC8iGVHUVNhhjgIxxEma+U3YC0baXyoYuzUWVlNlLUdBBxQV/uNSFfXaxJQ6OTcIUJSD2EKk50lFFz34pL4V/qDX8c/u5Ks7BLI39Gbkf1Iaa8HntZX12jetne9BkrJcHwArgCOIYWD2VTMHYOYOf3o3ibUFRtD6/rLpK5/oW+1ChNLK6DR5yywq9Qpzx/oNNFhctoqLrdTHA3DDgKIBuV5dYHlrqPUQ/r6DpYG3hXEnCsgQAeYWRTvo/Jerj5qlVYHXEY1p8UZhC+Z6i/rIV2nfNANBhIXsBMurnTqOOXoFmFZbkBPUc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z200czF0TVJTUnpEVzVqL2k2OG9lSDRUR29nV2lpaW4rdkdIRHZRUDRnSHJV?=
 =?utf-8?B?aHpQYUd1eWxkQk1NZWw2LzZWYk1wSWF2aXJnRmdWdlNrdmYyU0pmbHFJRzBh?=
 =?utf-8?B?LzZLVDVNdnFMbWVXSUtUUCt5SUFVRFVNcng0bU1YdmZQVTZhYXlrWHRzVjZw?=
 =?utf-8?B?NzF6ejd4MmJHWkhYNmNXM0NoaWVWUXB3aEFQdjE0VExUT1hlTEI5eVVpWFUx?=
 =?utf-8?B?Y2xhRDI2REZySElQM0RTNm82L0RnUjE0Z0xqZ0s2aTJFUWlBQ0pvazF1YWh6?=
 =?utf-8?B?UnVLUFBWMjE2QjF4QmlqS09Oa3VDeWMwQjBJTHpBVUNYYXIzcVNMVm53QUNh?=
 =?utf-8?B?NG5vYkdMUUVwbzVzNVREMWJLRU8vcWxndHVrcW1LUC9DVnlmbERyTFgxeEpn?=
 =?utf-8?B?RWk1WlFwT2xyQW9mdkd5NFRSYkVSZzRZUElpUUJBYWtPaFMzRmlMSkJUYU80?=
 =?utf-8?B?OXNCWlU3dWRhOVRPS2VtcmN2Y0FJNkJBSzMwY2RQWmZzU3BhUTQrY1VObk1L?=
 =?utf-8?B?OVVYZFlDVUIyb3VjN0VrTW5kVjNDNkVyRGFOVHM0ckRnbWFqNzc0N0pob0pC?=
 =?utf-8?B?SDBWUncvR3NaRGE1Zmp1TUxRbjJuVzh6d05rMmEzQmgxZFA5Q3ZwL0hMakUv?=
 =?utf-8?B?dXBqdGFjay9GQ2U4dGdPZk1hVW01Y1ZiOW1EemlOVGtBK3pNSzFjR0RydDdY?=
 =?utf-8?B?UWpiUEhHcVBOQiszb2ZEdnFySzM4bGdlaVdaWkFzbEp0djJHZWE5UjNFRFow?=
 =?utf-8?B?N3FXcjIvT09jRkQ5ZGswai8rb2R5eFFMVDRPYVVpUmJFMEJFcEpPak9NcEpx?=
 =?utf-8?B?WEZDR2R3TFdCU1lXaEJCbldtMnpFdnNJMEI3a1Z5MUdmL2dJbTFXcTlxVEhn?=
 =?utf-8?B?NE5jQTI0SERsekV5eitZS3o1ZS9lbU9BN0xBZGV2QUFIV2QrZXRpTUFZV2I1?=
 =?utf-8?B?dVJpV3V4NDVMUmtpNUdmd2w1ZnRHQTI0dlFuR2NJRFl4NmdiL2lHUVN5OXVn?=
 =?utf-8?B?RWx2U0JYRHpoT1EwWGhiS2FXa2hOM056WS9tNExaQ3VHMG5EUGg0VzA1SUpG?=
 =?utf-8?B?UmdFOC9RMTV3WUdwMHBIYzhkZkxqMUkyS1dTVER4QUw4Q3MzeHgrd3lRVFhV?=
 =?utf-8?B?enFaMzBTYTVFK0taQ0lGeG1BdGgvOVU4VHVHZDdQVDdOSG9kZ3E4N2xucnF6?=
 =?utf-8?B?S05ab0Z5NVZoSzIrWHhWNllvNnZ0cGl3SDA3MitlOFpNMkwyQWN3M0JIVGM0?=
 =?utf-8?B?WHJRK290T3VISU42dHNVbERjRUxWNGJNVGg2TG9uakdaU3VLOU51YzdBMTlD?=
 =?utf-8?B?bFRqVm9tMlNZRlI1cDhrL1hnRm14b1V3QVhTSG5JbWM4RjJiOTJvNGV0aEd1?=
 =?utf-8?B?Q3V2bVN1c0ZrLytQdXZUNmdVaFJtblFJMkg5ZFd2eWlUMTVIVWpVYjZPRmxD?=
 =?utf-8?B?TGJwZkdvUzhnT3JjcDZQbk1xSUFKWllrbGl3UUVXN3FHd0h5WGhlOXZHaDR4?=
 =?utf-8?B?a1M1NnJ1eGNuNVE5cXp3eWFDN0FNaFF4Z3NzeUFFb2dIWFp3NHZtMElsdEZz?=
 =?utf-8?B?bnQ0L0NIQklVQjJZMUZCbURvRjR6dUpZQ0VtWGxhdGV0c1QxQnN3MEl0N0gr?=
 =?utf-8?B?T0ZCVGFTb1VIMmpPbm9OMlRRMC9Xdy9BWDgwQllvYnMvNzVYQ3BrNnY3L1hC?=
 =?utf-8?B?WHV5bEZsUTV5enBqMndnR0xpbUh0WlpyQWRGRFdrN3NiSTc5RVJXZE5zOTJS?=
 =?utf-8?B?bTFxWjAxcEljYTVLS2ZiVVEweExsdnNqQ0JZdlBCSzhTWTRVdC9yNmlrSEF3?=
 =?utf-8?B?M3JyUzRoSExTNnJSVWVoM0RIeVZYRXhtcnNRSGF6V2p1cG1KbjdJR21ZMlQw?=
 =?utf-8?B?dndkMSsxUVhQWkNGbzlWY1loSlkrUVdvcEd5WFdNN3lrWkdqTmdvdnRDRlVT?=
 =?utf-8?B?azd0cGVHUXhtaHkyWko1SDFHZUhYSW9FMy9uaFdPeHY4Z3I3R01QT0RWNUFQ?=
 =?utf-8?B?cGdpdG14L2dRMy9aWDVsWDVUY3Y5anJmcnV5anRMQTQ0TWVqTUxuWjZqMTFT?=
 =?utf-8?B?L3hubitFSzg4UHVBdVd1WWUxc29vYUg3WDVqYkZHZkozc3FkTWVkRlcyZzly?=
 =?utf-8?B?aXNoaXVLcHI0bit3KzFqeFUrc2VYenA3NldGZ1JyTVpXZmxiV2lCRm0vV2tR?=
 =?utf-8?B?ZitoaDM0aDRDU0F3aDhWZVVJU2pLT1paUXBYM3RMRlJuMzczc1JIYitBMXl1?=
 =?utf-8?B?MnJnTDhxSjkxSHV0N0MrR21MK0M4dERCTTZWWWpzdHJFTExaalVCbFRHTlI3?=
 =?utf-8?B?WERiMW1FNlNYNFVIeEJHd0RkL2lYbXMxZW1jOW1NY1lDTjg0NFJWY3FwU1lV?=
 =?utf-8?Q?Qpfn5zkM3A1O3u3k=3D?=
X-Exchange-RoutingPolicyChecked: d7uy1PjBTeN7yjXl7tmgCOAvNE+aA2k6/IY2hgdIcpG4IwbaU0F8TPOBCSpqyMe9MOrA9X0aeYyZY6YPOdD+NSwGp4QcqrO9zueLwVwxQ0czLOSeKgU64RgGU/5/nfzXizt6NOonEHk1IC/pILquMG2TKdCLHFKOVOGTJ9mkiZv7q0z9SGv0JMIapxiEKdZxGCQZZueRZfiBFOVfV70TDjqIRUrAeFfBFVO7aRyNiWhW5IqVA/Ggnqi0hufCJDEAa3CXudkmWK/J2MttRbs6Ouz4Ht6xY0550pQVo9zKrRausPRN/VOQThQxuz1tyAfFU+gzzsmiYs+ARXCDpAwvhg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d4a9270-810d-46ba-9a01-08de8f1ce468
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 11:58:59.0619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lfhuk2o1HpEzMay/h0nKX7k647Jy9emQtnhmPINGvZAmHmhjY/JAIqru61UcuejBtggzyjRYW4ZPY4ENo8F49yGpIQ1HdtVxH45ymvJBJn0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7325
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 99106369335
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/31/2026 12:24 AM, Ville Syrjälä wrote:
> On Mon, Mar 30, 2026 at 09:36:52AM +0530, Ankit Nautiyal wrote:
>> Panel Replay requires the AS SDP transmission time to be written into
>> PANEL_REPLAY_CONFIG3. This field was previously not programmed.
>>
>> Use the AS SDP transmission-time helper to populate CONFIG3.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index ca054135ca30..34b0993d9b1d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -783,7 +783,7 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
>>   				      const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(intel_dp);
>> -	u8 panel_replay_config[2];
>> +	u8 panel_replay_config[3];
>>   	int ret;
>>   
>>   	panel_replay_config[0] = DP_PANEL_REPLAY_ENABLE |
>> @@ -792,6 +792,7 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
>>   				 DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
>>   				 DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
>>   	panel_replay_config[1] = DP_PANEL_REPLAY_CRC_VERIFICATION;
>> +	panel_replay_config[2] = intel_dp_as_sdp_transmission_time();
> PANEL_REPLAY_CONFIG3 0x11a
> ...
> PANEL_REPLAY_CONFIG1 0x1b0
> PANEL_REPLAY_CONFIG2 0x1b1
>
> So apparently we can't do the burst write for all three :/
>
> Looks like 0x1b2 is not used for anything so don't really understand
> why it wasn't added there. Oh well.


Oops! My bad. Thanks for catching this blunder.

I would also move the definition of PANEL_REPLAY_CONFIG3 above the 
PANEL_REPLAY_CONFIG.

I guess I didn’t pay any attention on the offset at all, and assumed 
this would follow PANEL_REPLAY_CONFIG2 :(

Will be careful and will not repeat this again.


Thanks,
Ankit

>
>>   
>>   	if (crtc_state->has_sel_update)
>>   		panel_replay_config[0] |= DP_PANEL_REPLAY_SU_ENABLE;
>> -- 
>> 2.45.2
