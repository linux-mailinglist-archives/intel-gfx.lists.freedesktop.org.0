Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJG1JNqt8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7014852BA
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A74910EBD5;
	Tue, 28 Apr 2026 12:53:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LFejx/Ao";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 163AE10EBCF;
 Tue, 28 Apr 2026 12:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380820; x=1808916820;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=edO8YbEEAtnmUmLMF6evw0VEpQVVAh3GV7hmjVEJw4Q=;
 b=LFejx/AosPuD9R6/EwovX3Sar/BpKxZwpw7+M/Pugt8Ho8SlLUOdNK+7
 MYUxIAbS3HY884tOsDLP9GgOKl5gdX5t5gH33uD4DkB3yDV5aTdXMP/oz
 7R2fFZyg3/v8Gs1W4mkYj5spxs9FWHjr7FHsczOlsIvKFSQKbtLjclJQ+
 N9/81zP3LD6pRSLxnyhXMS7TjyPwXdjQwCFU94Y/nOpDuuX0ru/p9jXjn
 IL4WVbOuimzhadCOBJ9GlfHcC/L7OeTMEisZx2KptJ6T7O5m3bbKE1DaZ
 UqlBpaODX4DmvpKzmlDqBQDIH5A4/lJ3cILvtFqjFh4l8mk5OJMLNa6Fl Q==;
X-CSE-ConnectionGUID: gBv0dFSyTYyLxgh8ut2Y8w==
X-CSE-MsgGUID: 36YmY+VDRIuTdO0snddxpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203111"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203111"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:40 -0700
X-CSE-ConnectionGUID: IOqefOVuRJyk+yFMeHqd4g==
X-CSE-MsgGUID: B09giJqiQ9aVUCeyyxjNZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244139"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:40 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:39 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:39 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.5) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VfdH8xWnSYUgj4zwZnkEkdw3AblHtosmvDdJ2Oa6WsDz9iXJcy37Kueh5lXvv2bNJv9IoYLAJyH7mu3AuzNu6l8TcSKuGzLeEjL49kMkQHnaGrT+J4cZnpOjZygLyuOYm98kIP0ymq4yPbCEwjVKJ+Y7xlUiehGxwd2g0722a9NLtKl2TkfCGhT0uQmkMf93Aj8Ddk/3LfjBE8M2XN9sjn7p4DT9pyMlIKSaQiShTcc7uFYMDWtBFzFWkVMNW/79chpLa2CATAh1b0/hv9fVMMpsHSPTUjSQcRsdoYmjoqjRtFrVQnsXHlLWn7AOsAdpF0Mtt2xeVd6Q+hl9a6MkCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H5VALB13daobNeIoEp1PXccjhbQEbawVEBwJkwocBDs=;
 b=XFz3G91+zVlJUwsveerD/zmpatYc1d7eNvsmCmVXk/VzNAjT8PB5A2fkISDkzSpu+3WfOzltTRKvhusldGyVkS9FX4EGhwrhQ/qlaCqUXRUGxXOU5+zwNDsoPemzjKdesiO11vQMhrzEDm5FrAv/5ncrXR/7MrQsgOje4wwn54z6xxAr3wpzZr0PINiCykRvQLBFfj739GyGHOvMieB9Z/NoP8yydSovdzBE7Qa2XCi3J3H4okfwtgi1+8SSzkP4XaGXitVvbQ2BZGSp6rFHbgVPasVvOvUQJeC8TQeQYx8+e2NMup3ubgzuMRr87WtRVghcKQB1/1oHHCiZoeWczQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:35 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:35 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 033/108] drm/i915/dp_link_caps: Move forced and max link
 debugfs entries to link caps
Date: Tue, 28 Apr 2026 15:51:14 +0300
Message-ID: <20260428125233.1664668-34-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: 73f2677f-ee91-44b5-849d-08dea52528aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: BuVUDxcSaANhTs0O02WhoRotfhy74z+lJTLmkKL+l+UkXDujAel3yYxFdobBwBfqGwu3+96aZLsVGjOK+10eDlasghGKdZ1iNShaSsBjRdhFeipFT/TyRBrBfPw7OOICLTY0h+tVV99ysao11791OF0akPCpz1HTR1KNDqU+iwx20yqYvAMy52Z6N8aK/1GIhafSfuBCA1p8tqMTvhPV3Y1xZ/bIAEsrMcfDUuy0rWuZ7o3BF1hVDZ/Kniu4NHR8rQXaTR7ZwY89s8trA/mkNF7HfXNLGIozZlNIp3Ic0E0/tBO+iIXuJ9Ok/vzsYIzIRk3HkmMIUoErJPi3zJ4rQK0hRkCCpCemCm/s7T0PM4XuGEUQ0Pwa8rrmCPlnFDCCcl9vyTOKyOTJEMvzJJH/Uy+vmmApqVnt4wej5qyzu0hIeRxL+BBxHm/qiwzNmOT3OwdEGOiam3Yz0Zr3PEwjuVuFA9+ALk05Muj1//4fshQKRBfbGUCVWsIKF6SW8lKhg2ruthxV6qDSLxZrYhmIeVvZeJw3FMQgDsK9/TVdqzmV6irJeSB1iepR5QglYqTEo2LKMQyDfAwX9hoyR+Y8rKDis0MFFU3Z7mscnzy5yoxUjsB6+/ALqRWE8e0yGDtn9/GKSRD+3qqDe3tzRcTchaTtfObe1YHuGGdoRlN+HFJ+oUx2Mj7+r3SD5sxz+nXVYXLP9oXU4Sic8GUFDgBx7lGsAa/VQDq3ABFQgSPxoEM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGlodkVKZFRHWkM0cXhManN6bTBuc2lzbUZNZ2dUK2I2cjI2QS9oK0hvWDJM?=
 =?utf-8?B?RXNXajJnWi9SZVk4bVJRaTlTRXIvcVlkRi9RYmkrazAxMW9EREZhMHpJWTdB?=
 =?utf-8?B?dE02WG9mK2JsRFhvYTdGQ3pVTG1XVWlRUVV2aGp2MzZGVEZ6bUJVT0RJTmph?=
 =?utf-8?B?YWJTYVVoNVhWWUdMMzFDZmo0cXplOEt0N1F0Z1VQVndGdDk2TVR0NjNUaVBw?=
 =?utf-8?B?cWVlVjVkM2tobEI1d0ZZOVhBUEhVVkZrK2MwOUI1UFcyOGZGUy9ZTTJFWTJu?=
 =?utf-8?B?bllGajIxTlFsQU9pT0QyVVJuTGYwYUFKR1NYYUVmRUlqRVp3ckM0OFNtSGpB?=
 =?utf-8?B?bHpBeWpXcmFvdlNuNDFQR21IdmpMYitlR1JMQ1U1Mkd2VTE5anFEb3o2a25m?=
 =?utf-8?B?amxQSjNWRDdYZm85NVhsbGRyeEtQc1dIVjArdWp6Yzg3K3pVdWp0TnVhbTZV?=
 =?utf-8?B?bWdzUC9nQzR4ZlI5Um9pWG92T2E5bHVNSGo1a3lwYnRTN3JUNm1mcVhZUGx3?=
 =?utf-8?B?OVppZURoa2xJOTBqMW5aSzUzU2gxbGhyRzRSMGk5NjFzcjBPVlkwVWhIMXZx?=
 =?utf-8?B?c2F2MkplbTNacHN0VTRxSnRFTFpwcHNJdVFDeFBhK1pkakdEcEFSbmZIbVVV?=
 =?utf-8?B?L0ZzZ25ITWRad3p3QW0zWnpuSkNqRU5kTnhZR0VnV05EMVF4U204Kzh4M0RZ?=
 =?utf-8?B?Ym5vTXRTRkJVU0Zha2N3MWRKamxDRkV2V1RqNHRtWUdHajR6dHlVRHlJREtV?=
 =?utf-8?B?cmRmRzdWemY2dG16YlZia2k5K0g1NklyU0xCV1pFMUR3dWttaTlPWXZCMEtF?=
 =?utf-8?B?T0I2RFY3dUV0S1NLclFxcmRrZVBUWm12Wk5QVWk0ekF6Yy83KzBLTy9EZ3N0?=
 =?utf-8?B?WjRNdzh2dC9zS05BempKdlNHQnpDZ3J3TngyMWl5TS9XVjRVTFhvQkNHM21o?=
 =?utf-8?B?WXFzRHJ6YjYvcloreHo2K2xMbTg4c0NjdzByRjVsbm10SjhMdU9OQnl6RjFt?=
 =?utf-8?B?YXJhdklJUVcvc1V5bWVqWi82ZDlXTFhUVUpZYVEzTE5ITTdOT2krUEszcTBJ?=
 =?utf-8?B?cGt3VFNRbkhvTnNvVEh3YU51Wm5YOEdCMjlxRHBOUEZ4S2FKV3BUeHJGRFlB?=
 =?utf-8?B?djV6ci9ReHRZNzBHa3V2VkZWV1hORVphdklIVWNscGg5Qkhib3JLSlZXcnpy?=
 =?utf-8?B?OXlZbHNTeTB6aW1oUmp4VzJQQlU5TmFxSHRUcE1xcTU2Wm91SEV4emQ4VUpK?=
 =?utf-8?B?M1o2T0tWN1JxbEJGMG1WRjJiQ0hzVEtjRnJLK3BSMVl6OU1QN1J0bkg1MHVC?=
 =?utf-8?B?SFhTZncrOWxrNWkzbkNPWHdHKzFNNHRsdUxMRitIR1QwSEZ1OG04UGh4R0Vs?=
 =?utf-8?B?TmxpUWc2L1JHYnZ2MlYvZkRpclFtRWZjdFdMWjcwUE1nSnFHbi9ucFJFRkNM?=
 =?utf-8?B?OWluUGZqM1hQU3B2VXFIa0VndVExc2lPZXV5azhYT1VWVkZlVGwwa3Q3aWNF?=
 =?utf-8?B?N2xhaklINkRtMUZLbXdJc1JrMmFmbWpseExYUnZBL1RLTEJmUjd5K0dEOFBG?=
 =?utf-8?B?RnFWc2xRVFFsZ3laVlpMV0c3SVhJaXlqUkNTbExZUmloYjQ4YWlPOTN6eThV?=
 =?utf-8?B?RFZHUHlHTHVnamxNVS9JSUVETmZXSWxPTE5Hc2VsL2Z0K3NWU2hoeEVJY1hI?=
 =?utf-8?B?OEgwS1ZTUXNHd0VOajdjY0U2TVMySmZXQWxPdW1KUjZVTmQ1Y01HbCtUVGVz?=
 =?utf-8?B?RW0xR3pydnBDbTZXZEZRekxqdjNBalJHSlRCQ0pMRWpDWTdOa1FJcGNXbjVh?=
 =?utf-8?B?V01ISVUzTGtpNnlLeit1ajdWTmMrWGp0VDBNOUlLK2Y0RzM5VzZOZ0syUzdm?=
 =?utf-8?B?bDZHUitUbEVYZGJhMUZQcVBjbTlPcDVDSU9LMmppbUdxVEtpTDFGTjUrNUdV?=
 =?utf-8?B?QTBsQ0NJczZWTWU0NlpTa0tPeVYvNnc5Y0IwYUJ3Uk1sSDNlUnQ1bFVUQ2xR?=
 =?utf-8?B?Rlluamk5bHdMM1kzTFdHejNyVW4yY0FvM3ZTa2Jvc3p4bXRsQXI0dGo3VGxU?=
 =?utf-8?B?c2R3RnRBNVI2OWtYNERMNTJJOUhFR3dISSs5czNGb2ZpUTlyeVFRTDlaaWFj?=
 =?utf-8?B?cktadk9mRGhEMGpmR3FHcmRnSDFEWkM1RkRySWNrcjdLQ2tkQytYeS9zTk1M?=
 =?utf-8?B?eXNmN3RZeXZHekdrKyswbVBZcVdnVUIyZlhIQmVqYmNsaCtveGFBVDduT3Fr?=
 =?utf-8?B?eUY3UzZZbFFYWkNjRThRT2N0a2p5SHlIZFlCMDdlZWRGa3piV1FkbmQ1dFNl?=
 =?utf-8?B?bHJGU1REcFJHdmhrT3FVR3FVYXdSbFZNbU1TYkp4TUkyd0ZybWwzUT09?=
X-Exchange-RoutingPolicyChecked: bL++PYXq4GX5nTesfodG95/iZT7P/uCrCYIQM9NO63eFGHEL4AKBh7YhO4AkVVdOBvpyGzLxBnbnPpXZwaJ5RSEPUxn2nmkKPmWPNp+5hnjSd8HmAkRTk62LDLGIwJ5MvM89o4UtsjmDAwzwZZ+FkOrLmsMGiwb6EsSXTKVE+UdlDLibgM3YaexxwEO8AEjx6u5OKvPcyt/9tAqma8O1nSu5at151bRzbZR9+KOykOrub6vKjtsP0M0+F3ezjMcrfftjDb7UKD8oJJpUV4LQGmLPwLLhtCK6ozDY6zO4gDAh1+QxtvnZGNVL/RAxXe1iYLgbdAlwRvjYw3Inh1uv1g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 73f2677f-ee91-44b5-849d-08dea52528aa
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:35.0713 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WjsExAJjI3RM2GLbH/PycAmE2gapg3bAwKlWV8+za28X64gBBhfFwsox15gVVuhPs58oG25L96okwnh/imL6Hw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
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
X-Rspamd-Queue-Id: 2D7014852BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Move the debugfs entries for the forced and max DP link parameters to
intel_dp_link_caps. Their functionality is part of the link capability
logic and will be updated to use the link capability state in follow-up
changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 273 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |   3 +
 .../drm/i915/display/intel_dp_link_training.c | 263 -----------------
 4 files changed, 278 insertions(+), 263 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 81bef000a4e3e..448fc985c5b58 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -32,6 +32,7 @@
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
+#include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_test.h"
@@ -1336,6 +1337,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	intel_psr_connector_debugfs_add(connector);
 	intel_alpm_lobf_debugfs_add(connector);
 	intel_dp_link_training_debugfs_add(connector);
+	intel_dp_link_caps_debugfs_add(connector);
 	intel_link_bw_connector_debugfs_add(connector);
 
 	if (DISPLAY_VER(display) >= 11 &&
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 1892fc0ff46ef..ed05a8597fc01 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -3,6 +3,7 @@
  * Copyright © 2026 Intel Corporation
  */
 
+#include <linux/debugfs.h>
 #include <linux/slab.h>
 
 #include <drm/drm_print.h>
@@ -70,6 +71,278 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 	forced_params->lane_count = forced_lane_count(link_caps->dp);
 }
 
+static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int current_rate = -1;
+	int force_rate;
+	int err;
+	int i;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	if (intel_dp->link.active)
+		current_rate = intel_dp->link_rate;
+
+	force_rate = intel_dp->link.force_rate;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	seq_printf(m, "%sauto%s",
+		   force_rate == 0 ? "[" : "",
+		   force_rate == 0 ? "]" : "");
+
+	for (i = 0; i < intel_dp->num_source_rates; i++)
+		seq_printf(m, " %s%d%s%s",
+			   intel_dp->source_rates[i] == force_rate ? "[" : "",
+			   intel_dp->source_rates[i],
+			   intel_dp->source_rates[i] == current_rate ? "*" : "",
+			   intel_dp->source_rates[i] == force_rate ? "]" : "");
+
+	seq_putc(m, '\n');
+
+	return 0;
+}
+
+static int parse_link_rate(struct intel_dp *intel_dp, const char __user *ubuf, size_t len)
+{
+	char *kbuf;
+	const char *p;
+	int rate;
+	int ret = 0;
+
+	kbuf = memdup_user_nul(ubuf, len);
+	if (IS_ERR(kbuf))
+		return PTR_ERR(kbuf);
+
+	p = strim(kbuf);
+
+	if (!strcmp(p, "auto")) {
+		rate = 0;
+	} else {
+		ret = kstrtoint(p, 0, &rate);
+		if (ret < 0)
+			goto out_free;
+
+		if (intel_dp_rate_index(intel_dp->source_rates,
+					intel_dp->num_source_rates,
+					rate) < 0)
+			ret = -EINVAL;
+	}
+
+out_free:
+	kfree(kbuf);
+
+	return ret < 0 ? ret : rate;
+}
+
+static ssize_t i915_dp_force_link_rate_write(struct file *file,
+					     const char __user *ubuf,
+					     size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int rate;
+	int err;
+
+	rate = parse_link_rate(intel_dp, ubuf, len);
+	if (rate < 0)
+		return rate;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	intel_dp_reset_link_params(intel_dp);
+	intel_dp->link.force_rate = rate;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	*offp += len;
+
+	return len;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_link_rate);
+
+static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int current_lane_count = -1;
+	int force_lane_count;
+	int err;
+	int i;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	if (intel_dp->link.active)
+		current_lane_count = intel_dp->lane_count;
+	force_lane_count = intel_dp->link.force_lane_count;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	seq_printf(m, "%sauto%s",
+		   force_lane_count == 0 ? "[" : "",
+		   force_lane_count == 0 ? "]" : "");
+
+	for (i = 1; i <= 4; i <<= 1)
+		seq_printf(m, " %s%d%s%s",
+			   i == force_lane_count ? "[" : "",
+			   i,
+			   i == current_lane_count ? "*" : "",
+			   i == force_lane_count ? "]" : "");
+
+	seq_putc(m, '\n');
+
+	return 0;
+}
+
+static int parse_lane_count(const char __user *ubuf, size_t len)
+{
+	char *kbuf;
+	const char *p;
+	int lane_count;
+	int ret = 0;
+
+	kbuf = memdup_user_nul(ubuf, len);
+	if (IS_ERR(kbuf))
+		return PTR_ERR(kbuf);
+
+	p = strim(kbuf);
+
+	if (!strcmp(p, "auto")) {
+		lane_count = 0;
+	} else {
+		ret = kstrtoint(p, 0, &lane_count);
+		if (ret < 0)
+			goto out_free;
+
+		switch (lane_count) {
+		case 1:
+		case 2:
+		case 4:
+			break;
+		default:
+			ret = -EINVAL;
+		}
+	}
+
+out_free:
+	kfree(kbuf);
+
+	return ret < 0 ? ret : lane_count;
+}
+
+static ssize_t i915_dp_force_lane_count_write(struct file *file,
+					      const char __user *ubuf,
+					      size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int lane_count;
+	int err;
+
+	lane_count = parse_lane_count(ubuf, len);
+	if (lane_count < 0)
+		return lane_count;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	intel_dp_reset_link_params(intel_dp);
+	intel_dp->link.force_lane_count = lane_count;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	*offp += len;
+
+	return len;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_lane_count);
+
+static int i915_dp_max_link_rate_show(void *data, u64 *val)
+{
+	struct intel_connector *connector = to_intel_connector(data);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int err;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	*val = intel_dp->link.max_rate;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	return 0;
+}
+DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_link_rate_fops, i915_dp_max_link_rate_show, NULL, "%llu\n");
+
+static int i915_dp_max_lane_count_show(void *data, u64 *val)
+{
+	struct intel_connector *connector = to_intel_connector(data);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int err;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	*val = intel_dp->link.max_lane_count;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	return 0;
+}
+DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_lane_count_fops, i915_dp_max_lane_count_show, NULL, "%llu\n");
+
+void intel_dp_link_caps_debugfs_add(struct intel_connector *connector)
+{
+	struct dentry *root = connector->base.debugfs_entry;
+
+	if (connector->base.connector_type != DRM_MODE_CONNECTOR_DisplayPort &&
+	    connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
+		return;
+
+	debugfs_create_file("i915_dp_force_link_rate", 0644, root,
+			    connector, &i915_dp_force_link_rate_fops);
+
+	debugfs_create_file("i915_dp_force_lane_count", 0644, root,
+			    connector, &i915_dp_force_lane_count_fops);
+
+	debugfs_create_file("i915_dp_max_link_rate", 0444, root,
+			    connector, &i915_dp_max_link_rate_fops);
+
+	debugfs_create_file("i915_dp_max_lane_count", 0444, root,
+			    connector, &i915_dp_max_lane_count_fops);
+}
+
 /**
  * intel_dp_link_caps_init - allocate and initialize link caps state
  * @intel_dp: DP encoder state
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 61dbce86ee3d0..c6a84891db464 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -4,6 +4,7 @@
 #ifndef __INTEL_DP_LINK_CAPS_H__
 #define __INTEL_DP_LINK_CAPS_H__
 
+struct intel_connector;
 struct intel_dp;
 struct intel_dp_link_caps;
 struct intel_dp_link_config;
@@ -16,6 +17,8 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params);
 
+void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
+
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp);
 void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 9572ea509a8af..3455e4daf1faf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -2571,257 +2571,6 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
 	intel_encoder_link_check_queue_work(encoder, 0);
 }
 
-static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
-{
-	struct intel_connector *connector = to_intel_connector(m->private);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int current_rate = -1;
-	int force_rate;
-	int err;
-	int i;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	if (intel_dp->link.active)
-		current_rate = intel_dp->link_rate;
-
-	force_rate = intel_dp->link.force_rate;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	seq_printf(m, "%sauto%s",
-		   force_rate == 0 ? "[" : "",
-		   force_rate == 0 ? "]" : "");
-
-	for (i = 0; i < intel_dp->num_source_rates; i++)
-		seq_printf(m, " %s%d%s%s",
-			   intel_dp->source_rates[i] == force_rate ? "[" : "",
-			   intel_dp->source_rates[i],
-			   intel_dp->source_rates[i] == current_rate ? "*" : "",
-			   intel_dp->source_rates[i] == force_rate ? "]" : "");
-
-	seq_putc(m, '\n');
-
-	return 0;
-}
-
-static int parse_link_rate(struct intel_dp *intel_dp, const char __user *ubuf, size_t len)
-{
-	char *kbuf;
-	const char *p;
-	int rate;
-	int ret = 0;
-
-	kbuf = memdup_user_nul(ubuf, len);
-	if (IS_ERR(kbuf))
-		return PTR_ERR(kbuf);
-
-	p = strim(kbuf);
-
-	if (!strcmp(p, "auto")) {
-		rate = 0;
-	} else {
-		ret = kstrtoint(p, 0, &rate);
-		if (ret < 0)
-			goto out_free;
-
-		if (intel_dp_rate_index(intel_dp->source_rates,
-					intel_dp->num_source_rates,
-					rate) < 0)
-			ret = -EINVAL;
-	}
-
-out_free:
-	kfree(kbuf);
-
-	return ret < 0 ? ret : rate;
-}
-
-static ssize_t i915_dp_force_link_rate_write(struct file *file,
-					     const char __user *ubuf,
-					     size_t len, loff_t *offp)
-{
-	struct seq_file *m = file->private_data;
-	struct intel_connector *connector = to_intel_connector(m->private);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int rate;
-	int err;
-
-	rate = parse_link_rate(intel_dp, ubuf, len);
-	if (rate < 0)
-		return rate;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	intel_dp_reset_link_params(intel_dp);
-	intel_dp->link.force_rate = rate;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	*offp += len;
-
-	return len;
-}
-DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_link_rate);
-
-static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
-{
-	struct intel_connector *connector = to_intel_connector(m->private);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int current_lane_count = -1;
-	int force_lane_count;
-	int err;
-	int i;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	if (intel_dp->link.active)
-		current_lane_count = intel_dp->lane_count;
-	force_lane_count = intel_dp->link.force_lane_count;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	seq_printf(m, "%sauto%s",
-		   force_lane_count == 0 ? "[" : "",
-		   force_lane_count == 0 ? "]" : "");
-
-	for (i = 1; i <= 4; i <<= 1)
-		seq_printf(m, " %s%d%s%s",
-			   i == force_lane_count ? "[" : "",
-			   i,
-			   i == current_lane_count ? "*" : "",
-			   i == force_lane_count ? "]" : "");
-
-	seq_putc(m, '\n');
-
-	return 0;
-}
-
-static int parse_lane_count(const char __user *ubuf, size_t len)
-{
-	char *kbuf;
-	const char *p;
-	int lane_count;
-	int ret = 0;
-
-	kbuf = memdup_user_nul(ubuf, len);
-	if (IS_ERR(kbuf))
-		return PTR_ERR(kbuf);
-
-	p = strim(kbuf);
-
-	if (!strcmp(p, "auto")) {
-		lane_count = 0;
-	} else {
-		ret = kstrtoint(p, 0, &lane_count);
-		if (ret < 0)
-			goto out_free;
-
-		switch (lane_count) {
-		case 1:
-		case 2:
-		case 4:
-			break;
-		default:
-			ret = -EINVAL;
-		}
-	}
-
-out_free:
-	kfree(kbuf);
-
-	return ret < 0 ? ret : lane_count;
-}
-
-static ssize_t i915_dp_force_lane_count_write(struct file *file,
-					      const char __user *ubuf,
-					      size_t len, loff_t *offp)
-{
-	struct seq_file *m = file->private_data;
-	struct intel_connector *connector = to_intel_connector(m->private);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int lane_count;
-	int err;
-
-	lane_count = parse_lane_count(ubuf, len);
-	if (lane_count < 0)
-		return lane_count;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	intel_dp_reset_link_params(intel_dp);
-	intel_dp->link.force_lane_count = lane_count;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	*offp += len;
-
-	return len;
-}
-DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_lane_count);
-
-static int i915_dp_max_link_rate_show(void *data, u64 *val)
-{
-	struct intel_connector *connector = to_intel_connector(data);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int err;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	*val = intel_dp->link.max_rate;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	return 0;
-}
-DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_link_rate_fops, i915_dp_max_link_rate_show, NULL, "%llu\n");
-
-static int i915_dp_max_lane_count_show(void *data, u64 *val)
-{
-	struct intel_connector *connector = to_intel_connector(data);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int err;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	*val = intel_dp->link.max_lane_count;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	return 0;
-}
-DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_lane_count_fops, i915_dp_max_lane_count_show, NULL, "%llu\n");
-
 static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
@@ -2949,18 +2698,6 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 	    connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
 		return;
 
-	debugfs_create_file("i915_dp_force_link_rate", 0644, root,
-			    connector, &i915_dp_force_link_rate_fops);
-
-	debugfs_create_file("i915_dp_force_lane_count", 0644, root,
-			    connector, &i915_dp_force_lane_count_fops);
-
-	debugfs_create_file("i915_dp_max_link_rate", 0444, root,
-			    connector, &i915_dp_max_link_rate_fops);
-
-	debugfs_create_file("i915_dp_max_lane_count", 0444, root,
-			    connector, &i915_dp_max_lane_count_fops);
-
 	debugfs_create_file("i915_dp_force_link_training_failure", 0644, root,
 			    connector, &i915_dp_force_link_training_failure_fops);
 
-- 
2.49.1

