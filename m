Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hxnJBM6HV2qEWQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 15:14:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A58675E8A5
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 15:14:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GMUldsQH;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02DEE10F052;
	Wed, 15 Jul 2026 13:14:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFCE810F04C;
 Wed, 15 Jul 2026 13:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784121290; x=1815657290;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bBYsiFO15o8axQ+1i5njyi4gVC04j6uiUYsqZ3BPO4k=;
 b=GMUldsQHylwp8yg6OFxOv09bya46i9ConqOjhS1QXE80qCrNd6Fy6rGn
 04gZNisUjMSclqrb8Zms2XXddQ8CuCDtknd4LKiAHUNAYeFhlFFQd4K/h
 kt/DL6RHV04cnqBKAdGJj2GHDHvLSLIflesmG50nmhOechvqXFbY0oo1S
 /+BrUFBDyLlnK0pBY78Th1jZg1RaqRtm+8JlGTVG6HMAUazC37lDDgK0m
 eZGkqdZgOGFMk1NGHfeCwVwUF/BFJeGHJ0Rgl7WSS5DHbjAEnS7Ds/rwE
 Q8zfmIJFHIRi7SWlaPo4A5Mpy5a6Xgw9w3xty94FB8an5J09txP5P0mo/ A==;
X-CSE-ConnectionGUID: ZF62RF2vQvGN56y1OkvBaw==
X-CSE-MsgGUID: vErKvqEgRSixGmQ4qpGPhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="95112799"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="95112799"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 06:14:50 -0700
X-CSE-ConnectionGUID: g6d1nyUuQOyxXGgYpSY5og==
X-CSE-MsgGUID: grceRD6mT8WMT9jq9lsAzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="249809978"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 06:14:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 06:14:49 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 06:14:49 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.19) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 06:14:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ki17iUohkRmyYU3hBqyNCkkqrVASOOpKToL/5H1En9cJv2dFsQveUdoIYKAcZsgMHbuL670c3FLKUCJtix4KMRmwqDUlyDYbKlUMJXNZCs5ujdnJF1vlGk6H2bgwsmU1eTaKoxWlPBznMfUa7UJ+sshLbpUAAFtLn0OxtOhqctHhLmqNhz6ddGBbcJEzkiZ1UyeSSxjXA6hcmZlD/tutDtfnPryxEW94WMdTHo26mEHC/09NtIQX3mUrXhOSPDu4hONHnnb2gLwA9M+Z5mrLH8PRxjE2Y/n2Q20Ls85ietkxjs4NRHKd2TBuMhkWJvMUakU3DGWT9Gj136hVsEgguw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kJ16zFhfzor7hyR0wshnVyPTboc9ut6Nvk33ge0XbVg=;
 b=jbrJGELQ6KzhLP5i2te5uCGhhg5nvBpbrhjsqHLOlqrlVaVVbhOm9BiUC3fKPXGaxhYYPDmwya+GM52xoiYlt0hDXJ5mSWvWF1eAZde0dezJQKz4gSRMPMHNb3i+MgPaj3XkK9mXqpaH1BKtEDyiMRCobWG6b5YacmqCYiw4rOj3Bzo0ZBj1SYwox1lgjH63oWwHqc+JJibR9m9XMZGemV64iccbtDtICKk0KQVOP9+4ut75nqiwQcwLfVqentuFYZAwJ6VGDT8EiLf1tg9xwh8AoLUFrGgmA//w0C7CITZ5l5miSlkdwNYlO7FykHc3JcUzz8Q2JEHKi3ZH0PDVEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by SN7PR11MB6558.namprd11.prod.outlook.com (2603:10b6:806:26e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.9; Wed, 15 Jul
 2026 13:14:46 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 13:14:45 +0000
Message-ID: <4b475ef0-4572-4b6f-957a-0e5bbf256bd2@intel.com>
Date: Wed, 15 Jul 2026 18:44:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/8] drm/i915/vrr: Move CMRR hw registers to fix
 refresh rate path
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ankit.k.nautiyal@intel.com>
References: <20260714103938.2371448-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260714103938.2371448-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260714103938.2371448-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0011.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::7) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|SN7PR11MB6558:EE_
X-MS-Office365-Filtering-Correlation-Id: a79cad1d-1eb0-47ef-2210-08dee2730a79
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|23010399003|4143699003|56012099006|11063799006|22082099003|18002099003|10067099003;
X-Microsoft-Antispam-Message-Info: 1hgHIhXMzOApssf/7wLvFfzT7VPKT1IH2eGphAGMyJ2HkwS0ITfYxPTesDoaqWDMzkSEVmm1LzSBrSG3t3KByyUUtHO9BxU/LWM/jE0Bq2Ka6F+DQm4nH599USA1K5QynO1OYnHjO28DJKEV6aV4iiIuBM9/k2SdcVDCKQqP8gFyD1IXZyBgWMtyOTKCkr5hjEy3CqUYxt+d5MN+mPjmAxOv5LQkt5fDo5I5UAF/eqcPB3YaXA0JXds1xz48ytTkga3p6c/zkKg42fsg0ncPk5OjgnOMOIa+Kf7LiNhkgH5kmoBJxLPIJ1jb4IFJrhVLOpBXlSWxjmbbFtKHt9mufZAF/kNl/bkzxKEucbjCVAuASvSQgrG3H+4PJZ5swKQZ+/dk27OceOr7dbS5Rb1C/61459R5Y48DCuPdttt6b14K3zLXkqPFqJoebQKxFRX0pHrK5noPfGSxvv5NV0Rjt/TJHMPDYur89cwyRjSprG+BBNMKvn7xO1CKMhiLY0WvSzy4EExfAY6gKRGdSXjkjMtHakZN5G/i1GNAcVqPbHfbicQtmLFY23QwNRMDBJU4v1Ei5spWT9jStfSRsy/lWwEpTGI5ZuQGnHhzGjHFvLS+r5JgP4PtmKPWXIIxUYejPy5oXGXWb4l09hwk898tYxT3PlG3sofV0E45XZmB4LU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(4143699003)(56012099006)(11063799006)(22082099003)(18002099003)(10067099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TmtBWnExbElkLzhjU3IwSzFkMkJGeFdyb2l1aDZGZkQzNGFpK1dkNHpCWitJ?=
 =?utf-8?B?cWFwMWlHWHJLR1ZObi9Vak9wcFhwOUZoQTdGL2I0RytWaDNpNVBJQXNDR2hD?=
 =?utf-8?B?ei9mN2NFb1FiYmNPWnpQNmlqMGJGRk9OU2VTa0lNMXBVVTQ3Vms1T2tnSkNU?=
 =?utf-8?B?YzduWkFEdFBTNUlNVXd3cTVtTEVRVUZyU09hYnhBWi9kM0pFQmd4TGJYeUI4?=
 =?utf-8?B?Vi9zRFVqSnZrSDdOWHYxV0lMaEI2Uk5sRi9qZFViZjFDaDRGM2ZybzhXSjB6?=
 =?utf-8?B?SUVVOStqR3dEYmtMRnI3UmE2Z0x5TDJNYzFJaFlkaGIwM21DaFBNNEF0d1k3?=
 =?utf-8?B?YjV2REJJcVJoYTBxZ2oydm8wVDRNSDJJVy9aZXJCNHdRNVZOcFVMVjFWS2VY?=
 =?utf-8?B?SmRTVVZHM2ZQRUp2Y1dqRmtKSlo1ZWo3NjFTQjJOSDF4NFRzVEE4YURSaTZX?=
 =?utf-8?B?RnVoY0dtYm9ualFVTlBwU3dyaFd1S2MzelhzbmlLODZLRm03UDk4dEtPZnR1?=
 =?utf-8?B?WjcrWXRIWkdETnlMVUFWUUZqZFRoWGNuM25rdURrenUxekRoV3hXUTZVc2dY?=
 =?utf-8?B?VGlza1QrZlVWYlI4cTVvTCtUVVJQQnZYMTR0V2I0NEplTVhyTnFxZ3ZoT1I1?=
 =?utf-8?B?OXV3QlFwOTREM2JtVE5NcVBHQUhDLzZDNm84SUVjTDZUdnBiZW9qRndzTFRK?=
 =?utf-8?B?bmVPTE9OM1B1dUFzVFV2R1dmZXZyVnp6WmVvUkhIUUordDhzYWxZOW5lb2Rk?=
 =?utf-8?B?RjcvbkhRamN4MEFIcnBORnBEbkJFMjdUclVmWVFPOXZlVmFVS29IV1B5eHY1?=
 =?utf-8?B?T05KQ3RicU8vTW1KREhnV3Rud2k5OGVwRHFwTktnWkV4TDkvdkp6MlR2RG93?=
 =?utf-8?B?MFk5UmRyYUNNamtlOCtnMDJJdmFScjBCa0JHakxLQkdrSVQxR2dydkw2eVBF?=
 =?utf-8?B?TDhXYzE3MXZXdTBwZFUxYzdOd2dyV3lUZHdscXN5T05FM0pEZWhKVm1mRnVO?=
 =?utf-8?B?aXJwRUc1TG5sMW1lSDRXUllFREpLdnVjRVBrVDdSdWdpTzZ3WnZabllvNEFI?=
 =?utf-8?B?cDlseUxqdnNBV01SY3BsS0N0TnluRkVsOUFxbzR5c3UxdGFkKzQvWU5KTnVh?=
 =?utf-8?B?UzBkbXhhckJyNWJNRUxjVVJKeFBaMjlQS3Q2TDhQRkF1WE9NbGdRRHlBODdX?=
 =?utf-8?B?c0E0a2R3cExiNzE4TmYrcFh5QjNpUXdLUm1DT0JtWUVyTFJCd0NnNkU1dHdt?=
 =?utf-8?B?aXNROWI4Q3dKL0FIYVV3V1FvUnRSdVErMGRyeWJzd2E3eVhiQ0pBTEFhMnJk?=
 =?utf-8?B?WmVham8zOEREbmt2VTI3KzcrZ1lRUFhESTEwREZLOXN3dGlvYlg5ZjQ5M1ZC?=
 =?utf-8?B?NHgwcWQxWm1yZDlCdlZzRXdqWk5DYnYyVk0ra1RhOXN4bXJ6dS9mWmtTQ1Ns?=
 =?utf-8?B?aWZiamJOaG9kaExueFU0MElod01vbGRyZFF3aVdrQkpBdW01ZzBrTW9QK1B5?=
 =?utf-8?B?UnA0eFRqUGtKRElCR2xIQ0w1U29VQ3VOWGFISGhGa3dMekMzQXpEdXlhQzZ6?=
 =?utf-8?B?VncwdUdTdndBNzZUbzFpdjZzV05YcHNGRHJYYXc3RHVBWjZ3VnYrcS9SZmh4?=
 =?utf-8?B?cHVyVDVMcnowOHMwY3ZGQWhCbk1obUdBWE8vZE11NDJsQ1M3Y1RyQ0dOWUdQ?=
 =?utf-8?B?b3U3Z3FDVGlDSjAveTNUWnV3Uk9NQkVMeERCWFNIMWxOVzNaNVd3NVdoRnJk?=
 =?utf-8?B?c3lScjVKaklLNDl0T2lHTXZBZy8yekNnTVZVbGozek5zS1haSGE0Q0lPK0M2?=
 =?utf-8?B?ZWU2U0JEZGU0SThMUDN3d1RHYk1Ocm9YNHZDNm1GUTY2OGNBemZZYnBhT1c4?=
 =?utf-8?B?bkdFNFllZG8yN0l6ZVk3eGY0VkxKM1orMlRUQWg3VmhVMVo2MnlhMDJEMVNG?=
 =?utf-8?B?MU5oVlIzYytOcGNGL0hxenJkT0w3V2J4ODNVWjJUajVUZkpwcW5Cc0F0cXR2?=
 =?utf-8?B?TVNrMTRGd0JsSkcyQXVqVGMyTU1RQmdwTGJubzBreSs2dzJFYngxKzRKQnlR?=
 =?utf-8?B?eVk3eHhsRGorZytCWGp1bEdvbHdsLy85MTFIQzlNOFpwdEhYVTQ1aGVJVXJo?=
 =?utf-8?B?dFAxOWcrWHdzekVrK1JYUTJtRXVUSDhDZFVrUnViVkJOTnNjVlQzUDlpQWtZ?=
 =?utf-8?B?TXFOU24zZGx1UFlZNU02ZDJOVkprMUQzS0ZKUGRPcko2MDlLdTB3QjNXbHAw?=
 =?utf-8?B?NEgwVnk0TFhMLzMxcDhFL0F6MGN1czlGdUpwdE1TeXBlVmNtTGpZcTU2T3ZS?=
 =?utf-8?B?UXg1K2V5R0RrL0wzUGZzNnRBUHlMcktiK3hqSEN2RVlSUkN1dWFJbHZnYjBQ?=
 =?utf-8?Q?BLNuE8zar2QUACYPxsHbt48SBNSQ6Y8j0FaVw?=
X-Exchange-RoutingPolicyChecked: Vf8pbevBcBcjZJ34m8dV0Mc1NRHCC28zqRXJGvO6wfCYsbitcJNaB/L8bgdtJ/SPFO5DNCYgGQZ5NyzLRf+L5VpjHF52hUE7Nleyj+7x0tz7M6Gr8sEp+UElwFR/b+d+vDAK/iDozv0tnmayR588XGLd0lOr4EDjYCxWzIYCDAnB+1iS+0ZegnTovQo6KDi1KzIR5C2vEK4YiALylVrO1mQTEnaDfwA9jz1B2aQjkdMBNRY+iQ9OXm9jTuTw+czgZUCZeK+x/i7BQqXLodAKk3lbQNPUqJqn0u0zCQaNiSZS2R1wsmtlo4Z1O0KqmvTpDSBhPIU840n2t+w6UWqO3Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: a79cad1d-1eb0-47ef-2210-08dee2730a79
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2026 13:14:45.8967 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WLmI2HrXvJKCv3zpfL/47T2OSXWhxfvPllOqSRwnEbmlVBCsaLOhhVW7Ag6yEmEzClaXhFucwFVPCmO2OLP26ysesrre/9ROHxzpUKQZ884=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6558
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2603:10b6:510:26f::13:received,10.22.229.25:received,40.107.201.19:received,10.22.229.23:received];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6A58675E8A5
X-Rspamd-Action: no action



On 7/14/2026 4:09 PM, Mitul Golani wrote:
> Move CMRR register writes to fix refresh rate register write path
> to consolidate with fix refresh rate implementation.
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 22 +++++++++++-----------
>   1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 25ce56d48bb1..95c7b0c05ec3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -337,6 +337,17 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state,
>   	if (!intel_vrr_possible(crtc_state))
>   		return;
>   
> +	if (crtc_state->vrr.cmrr.enable) {
> +		intel_de_write(display, TRANS_CMRR_M_HI(display, transcoder),
> +			       upper_32_bits(crtc_state->vrr.cmrr.cmrr_m));
> +		intel_de_write(display, TRANS_CMRR_M_LO(display, transcoder),
> +			       lower_32_bits(crtc_state->vrr.cmrr.cmrr_m));
> +		intel_de_write(display, TRANS_CMRR_N_HI(display, transcoder),
> +			       upper_32_bits(crtc_state->vrr.cmrr.cmrr_n));
> +		intel_de_write(display, TRANS_CMRR_N_LO(display, transcoder),
> +			       lower_32_bits(crtc_state->vrr.cmrr.cmrr_n));

Shouldn't TRANS_CMRR_N_HI be the last register to be written.

> +	}
> +
>   	intel_de_write(display, TRANS_VRR_VMIN(display, transcoder),
>   		       intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
>   	intel_de_write(display, TRANS_VRR_VMAX(display, transcoder),
> @@ -648,17 +659,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   		return;
>   	}
>   
> -	if (crtc_state->vrr.cmrr.enable) {
> -		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
> -			       upper_32_bits(crtc_state->vrr.cmrr.cmrr_m));
> -		intel_de_write(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
> -			       lower_32_bits(crtc_state->vrr.cmrr.cmrr_m));
> -		intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder),
> -			       upper_32_bits(crtc_state->vrr.cmrr.cmrr_n));
> -		intel_de_write(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
> -			       lower_32_bits(crtc_state->vrr.cmrr.cmrr_n));
> -	}
> -
>   	intel_vrr_set_fixed_rr_timings(crtc_state, cpu_transcoder);
>   	intel_cmtg_set_vrr_timings(crtc_state);
>   

