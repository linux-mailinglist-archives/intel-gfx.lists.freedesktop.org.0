Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDtgGcGIc2krxAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 15:42:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C95577323
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 15:42:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E93010EB09;
	Fri, 23 Jan 2026 14:42:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T292hOIt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4957510EB09;
 Fri, 23 Jan 2026 14:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769179326; x=1800715326;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5hZ0OUqcozlKMzinUtKoJrqHHlLz/ngd5nOJvMWxuwM=;
 b=T292hOItA4by+LBOaUr9Bw9WfQ2H9LUKYGj3x343ERpQHPgmWBUQJOxX
 t5afTp0sct8tQAuIlhP+ZPZhCLmoHABnObzTu3tmp8iL/QebgIBtF8Sq1
 LBbPwGOYupd7xOVmTH1kFDAMjtF5dkdU0xD0Jix7OtedBYVKIZARJOd90
 +OFvqCjug/ghCass3HCcghn6iZwbS+pUX10tdtjOiwZCxoDpTqBHhrbVq
 8CdTrHaNgan7/qX+iM+Yy2fi5rEol9565KeqzFOyUlkaeuW2jomZT5AZ+
 B/jkUfun/FO1Ku4fM9e0/NpNFYH+jbt8DiU8Va9JfOZrbbxLfYgESQUSV Q==;
X-CSE-ConnectionGUID: lqwU64VuS5+uZSLrg8nNuQ==
X-CSE-MsgGUID: AmIHXx/GTzyrtH2ZbSdTDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="74283273"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="74283273"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 06:42:05 -0800
X-CSE-ConnectionGUID: Sl83xQPcR++eqqdl1Nz5BQ==
X-CSE-MsgGUID: /Wc8he6BRBS3XhwEyhPIYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="206941076"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 06:42:04 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 06:42:03 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 06:42:03 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.5) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 06:42:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TxeoUXr40AH3rIGZCUqh4ftb1r0rlO793j5fuKb8u+KWZUGBDl16IewkPUTvj/w/OI1DVpO+O0wsj4pLZtlrX1IH5QE/eG36ayxKVJLcmUw/IfVIlWqp9k+WJ1UAk7cYlxeMhNRnWFLQ+13YfObz7JOJc41FSSLdArb5fihX2gdsxbmluwwmbLTQRz6W/moLCn6bGtY7P3dLpN+dioE3hQCYQenCUDnafFfM7SZ/lJSlPGNjyZwguzRpwP5ed6rUPYy9KhoPBLFekUaLboBbBLXBhCKjQ7ZLjGdgKgqdrjo77iNeHklDDAAr31+Zkxg0XunwRq1AqJYHCpqZtWyAcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5hZ0OUqcozlKMzinUtKoJrqHHlLz/ngd5nOJvMWxuwM=;
 b=ZselA7kKnAGbWJft/W5kgcn4jvRky4ocaM/O16fL8Cc/+c8B2Q1pbYZZIXjk8HMZrHzU1Pw9Lbfo0iFAYS5zQNPC1Shd7GmhPghj1BAGZ2miby67Ba+2cMR976pxBUIBe7B06K/koIcDMtpATyPLYSCiJKC0V+7VrWK90/n9tifahBzaDCfnrjg9sVTlNG7Om2F8zGk7H1TkfXn6aPb17UplrAfSCSXm3caKh4+DqV4QzHyS9pO69MATTEGA3NouzLLyoxofqNCdqvMr4tiuxcYAd2NLRPBAmEQa/vTVx/R73CIiFqjbWo1QwVd3BZL9A7AEr9Lc3+q3z7gY5dKeXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by MW4PR11MB5800.namprd11.prod.outlook.com
 (2603:10b6:303:186::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Fri, 23 Jan
 2026 14:41:55 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 14:41:55 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>
Subject: RE: [PATCH] drm/i915/cdclk: Extend Wa_13012396614 to Xe3p_LPD
Thread-Topic: [PATCH] drm/i915/cdclk: Extend Wa_13012396614 to Xe3p_LPD
Thread-Index: AQHci5vsVx4VC8Sj2UCvWHTTpbXS27Vf1YUg
Date: Fri, 23 Jan 2026 14:41:55 +0000
Message-ID: <DS4PPF69154114F475EC17F9DD07751B405EF94A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260122-wa_13012396614-xe3p_lpd-v1-1-39d34a3a5b77@intel.com>
In-Reply-To: <20260122-wa_13012396614-xe3p_lpd-v1-1-39d34a3a5b77@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|MW4PR11MB5800:EE_
x-ms-office365-filtering-correlation-id: 1e79c4b3-c721-4bf8-b49a-08de5a8d8df5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?MDlPTVAvbmVIM1FPYlpVUFpES1plWFJ2bm5ibWlRMDhKOXhvdHRJcGJ5S1NU?=
 =?utf-8?B?MmRHbGNjbkdCK054dWxHL2xuUmsvajZZQ0krMjBoeGphSTV2KzhSL05kbnN1?=
 =?utf-8?B?VUt3YmlMbG01dVQ1TkFUbnRpYUFWVURBc2hPYXU2QnU3YndwdVgveGx3TUtI?=
 =?utf-8?B?UFZvS2M1UjNWWFFMaU5JM1RwRmxUZVA0RkZrM0VDaGFISVBYRzhPeXg4RUMz?=
 =?utf-8?B?WjdOVzJDT0I4RDFxNXVHM3BkK2lQRWhVelI4RjZNTThxczFYNzZoS3M5UHY4?=
 =?utf-8?B?YXhqOTFYeWlZVUVPWDJraTkxRXdIL0ZTZ2FTVjZTY0g4ay90UUxnNlNFdU1i?=
 =?utf-8?B?bTJDdVZOa0NwMzlZQkpWUnBwVmhENUh4RGw0QU9LMElOeFoyeVBKN2NYY1dM?=
 =?utf-8?B?ZTRVVjZySXJzcDlKSG81V3ZxL3lUWVdMMFhUdmo3eDBoQ3Rzc0dtK2R5emph?=
 =?utf-8?B?UDhHaGR1aW92QVVWbFZzc3dZZkVpZnlrcjFvRDZrU0dPRFRwc0NxTTQ4V3Zv?=
 =?utf-8?B?REVkdGZ2Qkp0UEwxcjB2RzkvbGRYbVBDM1JtekFmZmJkeHl4MmIwNkRMbzB6?=
 =?utf-8?B?WFBNamNSYW0zQlRpSjBaOTBQS0NyMis5aUJkck02TkdETkJPVnFDVmRVWUd4?=
 =?utf-8?B?Nk1YdnpndDhST3k1aVplSVZGcy8ydzZFMEQvbnZ2M3dJOWZxRjUyRThKaWV3?=
 =?utf-8?B?TnU2c0VwNS9QaTNvcTdzMHNleWlqQmJJV1JiL3R2TVYxeE9VM3g0LzVUaGVh?=
 =?utf-8?B?SGkrVnpIRnVKNWpYcG5TTnJHZlBQUU82dWZRWjJNaFdVWDRMOHNTdVNtcFVt?=
 =?utf-8?B?ZDRlcUdjeU1HRiswNERpZ0hOSmNmV2dHQ2FqOFdxVFRtM3J1VUZpMkNJdUsw?=
 =?utf-8?B?bDczRDQzbFRNa0RRb29sQVBjcW5xRWZScWlvSGs2TFUyam1QVVZoU3pmTXJ1?=
 =?utf-8?B?RzRMa3pPa0kvcU1DUFR3QTNlQ1pSc2JsejI2SFZuN1ppYVN1Uk90RGdlYU5R?=
 =?utf-8?B?eTBDV054dG9SWkdTMWRUKzZYY1U1UjFjY01VZTZKQmxScy9PTi9BVUREZUli?=
 =?utf-8?B?eWhxZFJTSnFFZ1hDQ2IvY3VldDFqdUJieEVESmhSdElsWit2VEllOW5MbFJ2?=
 =?utf-8?B?Q2RjNVpZQ3Y1UHBydDU1R1F3Z0VabzZ2RjFYeVg0cVpRQ2dyM2l1R0twY0Rj?=
 =?utf-8?B?dlh4S1Z2VGxTc0hrZXFHeERJdEF1Q2hIczFiM2xDcllCOFZOYTVnVno3dFJs?=
 =?utf-8?B?Q0NZN2VieE5lT3JjeUg0am02VFVCRlFBUXZtWGJxeXc3OFJ4aWtFalFwbUlr?=
 =?utf-8?B?a3BTU1RiRUZ2U1NZdVRpR3ptTWVVZDFKa3cwRzBLQ3hnMytqVjR0d3JTdlNt?=
 =?utf-8?B?NFc1c3VSaENZeWUxWHhHcy8rRmZ3YjBFdTBkZk5rUUNNYXBzVVRURFJ0ZCtW?=
 =?utf-8?B?a0JRR2VrVnFhQzlJNXByMFVYNFZPREE1WnlKTG9rMEFOS2JVaTVGQTRZMFRE?=
 =?utf-8?B?THpjL3pxdE9LcUI0M0RScXVQOFNONTZmbHZyVWZxKzJXU0U5NVFvd3RWWnJO?=
 =?utf-8?B?alZNRDg2cW84R2gwbWVFMVNjYnZMb0FuVnZEVnBGSmZVQTFITTlldE5sQ1Ex?=
 =?utf-8?B?clFaSG9rSlo0bERvZDN5Z0VTNmhuYnRxMlVDUTl0WHNIMldzZWZIQi9vWVIr?=
 =?utf-8?B?N0tKdmo4RDFBL1ZiSVBwV09lbXJML0IrNllSNFBDalVrcDdtdXZQYzZmeFU3?=
 =?utf-8?B?RG41VkFocUVCRFFhNWZNMkMvalFSdVZBZGtrQUdnWnRLcEJHaG8zdXV5NzVO?=
 =?utf-8?B?VmFVZVh1ZVBweWJ0TkZnaldUMWRLcnJiVXhRRklaaFVvcDJoK2QxS1QxZXBp?=
 =?utf-8?B?WXY5ZDUyb0dWbjBWdm1maDlVRlBPQk9yVFVoRWZYcmdxSHdnVVZZcDRaMnZ1?=
 =?utf-8?B?SEpBajFPUmV3M0VadHdoYUY1ak1WbXlabWtObFdTQ0ZVZGNLYXZyY2ZBYVF1?=
 =?utf-8?B?aWZ2RnNsdkJhVC92QktOcWh3SW5HdXZ0RTVDclpLek1hNUc0dlR6Z0UrNy80?=
 =?utf-8?B?TDBiWTlQNUcrcUs1QmFJcFJpSWNjSWtRR0ZRdnNGWHBxU0FlT1JqTHZXUDBN?=
 =?utf-8?B?aDVlcW5UdHpnT2NTQzNYazNYaURDTWpuTTl6MFdHY3BMZzJvVDVxcnVDeHRI?=
 =?utf-8?B?SVE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UGxZR3BzK01hQTVBTGlqOWg2ZVJCOEZ4RTBCa1hhcHRWbG9xMC9Mc3BTSG13?=
 =?utf-8?B?emdiRnJzOGNqK2VWVnY1U2FtZXZxWDNDZXY0dUxyVkhoUjNYOFRBd3Q4YVhX?=
 =?utf-8?B?SnpkQjQvU01NYUlmSURmcTJzWHpFMkpOREJZZGlxMkhibVd5TnJiUVdNekpI?=
 =?utf-8?B?MjN0bVc5emF5Y1pLZTNGbWFSOWtDTUs5R2dUNFBxK3lmSUNVTnNHM3lkanVS?=
 =?utf-8?B?WU5UK1pmckFBYUNzeG9VM0ZRb1MrRm5HWFp6dW1pNUlzckFjM3FtM3huWExQ?=
 =?utf-8?B?MlRwS3VBVFQrV245L3Q2Ukc2cDBDMmo3aG00amxoMVR2aGRhajhHMzhqWkY4?=
 =?utf-8?B?bmJMSGtrZ1o5MjdsVTljTUhzTktaeUI1cnJiVkM4OExCVGQ4Zjl6S3prNWpB?=
 =?utf-8?B?RXFkaFBTVUtSZUFkS28xM1E2Z1JGNERGQ29wZm5JRVVNVFdHRFhlSXlNY2Yx?=
 =?utf-8?B?UnFYbWdGZ3dxSXM4QTFkVlhzdE5Qd3BYVWlDMTVjUDc4NlI1WnRVNjlVZXN5?=
 =?utf-8?B?UEJhR1g4Z1dsS2pPQ0luc0dsZVpwTW9zUW5kendjaUQ5eHhLUDYvRDBCSnJn?=
 =?utf-8?B?QUFSYjgvMDV3NkNJYUs3SU13N2ppL250bDVOUGE3SXNxY0JlSzJCd3ZqZ3Rq?=
 =?utf-8?B?SndPamJ5QytvdWd0N3hwQ2RuV3YyRnlzUHUyeXozdVF2M25HVXNqb1E3S1Fp?=
 =?utf-8?B?bmtHTnlGQnh1cFczY3N5eXBoaExJejZvRTk4enIwV1FFdmdybFVMYWZkZG1S?=
 =?utf-8?B?a09pQ0lienFmYWdlS0dndHpvV1F5eFpGcCtOYjdLaG8wSzJOQyt2ZU9TVGhY?=
 =?utf-8?B?aTlmRjN1cUkyK09IOWNweTFMWWd4UlpEZkZ3OHFMT0JJUXJZYlZMUnROUWdE?=
 =?utf-8?B?d3UwVCtpNThERTBOZ2JNOFc3Z0E3dUhwRUdhRGpBZWVZM0NkbC9nOExJVUUw?=
 =?utf-8?B?eEI1OG9QeVNGUTdlaU1Bc3lWbkRwU1lDWlI0Qk5ob1RJaVVUWnVDMGR0dXk0?=
 =?utf-8?B?ZUNsN2NRODJhYXA1WnZQKy8rOUhDSnZKRkE5NExtQVhxek54dlFWNnJ4Y2VQ?=
 =?utf-8?B?UnRFcGFnU2xmOEQzNnpwY2RMMjZZUjFUYzdGRkdNVzNGZWZDQjFlbm5hd0Rp?=
 =?utf-8?B?TVhiK0F3b3d0OXRFWnRBbmdScjNqTDlLU1c5VzVnRVg2elFjaG1xY3M1bDdV?=
 =?utf-8?B?Yk1BeXAzc0RCVnNNc2NsZUlPUW9maG4wZlg5Rm1ZbXVwaUhYTmx2NXUwSm9G?=
 =?utf-8?B?anhETmtMUmtPZVFnMkJncU5qWnpSaU1oQUNsTzcveVBMOW1NcTYyM1Y3cEQw?=
 =?utf-8?B?VVZ0dlNEV0JUOStmOGkvU1MySlRGZGJXZGJVb2hlMys4ZGxIY0FEUWJuWXRo?=
 =?utf-8?B?UnFkZG1nb0RaYU9VWWF6bVFkcmh0eGpQaTBUYkZWcm13TXRHWDFOKy9Cbldx?=
 =?utf-8?B?dkdLSThGQnB6SXgvcWY3YUNSSE91Mk1FN2lpejN0eW9ZckZXZ1p5b1RZNEJS?=
 =?utf-8?B?RUROdjZjcngzL3p5T0VtdW1nODFXaWYwalFodm5uOUh6aHVXMDF4TEZodXB5?=
 =?utf-8?B?TktZWjRPbFlDenRYdFdIcEFuN1JFdjdzSmpMNnVJQVRXZnRrYmZmUnF6c1Q4?=
 =?utf-8?B?azdtUUY1U0xyMkd5WDVRUXNDd2M0dnNNS2QrQndMbEZQTFBMMVVvdklFVXJp?=
 =?utf-8?B?U1J2VTc5TzBaL3NtQmJ3eUROZlFISUlvSENFdy95WDJ5Qk9vemRPTE03VkE2?=
 =?utf-8?B?OHFxa2J0ZXVWMHFZQ1lxc2RnSGczeEVwOHMrc2VEMFFIaFM2MkJiMmQrQXhQ?=
 =?utf-8?B?eFhSV1NoZExoUXpsZXFBUDlwTVBMVk5HdjBodHRCSlpQV1pUMHpWeW5CRVVK?=
 =?utf-8?B?US9kOWNuNklSNmw2RERuaTU0WmpHejBreXRzK0pXTFE1VTVML2N6R0RHNEtH?=
 =?utf-8?B?eEx4UklVbWI0aWMyTWgwSkhNa3dReTg2clIyZURjdWR5SVZMTTlVNHhsZjdm?=
 =?utf-8?B?aWwxWGJkRkpzdGVzbWFNTGtVd0diWXZGaktHZ3JHOWtHR3BVazFJRVNMUG14?=
 =?utf-8?B?blhGZWdEMTMwckhlWlJpMXErVjFmRmQxL2RmQXY1TmFYeFNsNlpYMUdBK2FL?=
 =?utf-8?B?SjZxSWppQ0k5ZlNWZnhyRkhsN09INllSOCtqaUxIYW55bG02c1BPOTlmY2tV?=
 =?utf-8?B?TWlxMm1HSnhDWUtuRkFjdG41MDU4aGNYRm9uQUl3Q1V3UHpldS9KZ2JzWDVN?=
 =?utf-8?B?WVJPYVdzcC8yN1pNVEozTHNqQWxJSEo5M2c3UTIxSUpuV0pVRElGTk9zUkZY?=
 =?utf-8?B?RFNrNkwreTI3MGE3TDFzZDcyVHk4c2lUdUFZaUlVUzlzdmdlYkkrUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e79c4b3-c721-4bf8-b49a-08de5a8d8df5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 14:41:55.1063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qkYd2QPMUNGzVQNm3ZKcj+g4yn9R5DSjkYXBdq3HZpfQOcCjfAhdIaGfnuIRCcu8bTmqOw41/DqE6M2YoxT8aA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5800
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7C95577323
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBHdXN0YXZvIFNvdXNh
DQo+IFNlbnQ6IFRodXJzZGF5LCAyMiBKYW51YXJ5IDIwMjYgMTQuMzcNCj4gVG86IGludGVsLXhl
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiBTdWJqZWN0
OiBbUEFUQ0hdIGRybS9pOTE1L2NkY2xrOiBFeHRlbmQgV2FfMTMwMTIzOTY2MTQgdG8gWGUzcF9M
UEQNCj4gDQo+IFhlM3BfTFBEIGFsc28gbmVlZHMgV2FfMTMwMTIzOTY2MTQuICBVcGRhdGUgdGhl
IGNvbmRpdGlvbnMgZm9yIHRoYXQgd29ya2Fyb3VuZCBhY2NvcmRpbmdseS4NCj4gDQoNClJldmll
d2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1v
ZmYtYnk6IEd1c3Rhdm8gU291c2EgPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5jIHwgMyArKy0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
d2EuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5jDQo+
IGluZGV4IDU4MWQ5NDNiOWJkYy4uNGZmNjkwMTI0YjMzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiBAQCAtNjMsNyArNjMs
OCBAQCBib29sIF9faW50ZWxfZGlzcGxheV93YShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSwgZW51bSBpbnRlbF9kaXNwbGF5X3dhIHdhLCAgew0KPiAgCXN3aXRjaCAod2EpIHsNCj4gIAlj
YXNlIElOVEVMX0RJU1BMQVlfV0FfMTMwMTIzOTY2MTQ6DQo+IC0JCXJldHVybiBESVNQTEFZX1ZF
UngxMDAoZGlzcGxheSkgPT0gMzAwMDsNCj4gKwkJcmV0dXJuIERJU1BMQVlfVkVSeDEwMChkaXNw
bGF5KSA9PSAzMDAwIHx8DQo+ICsJCQlESVNQTEFZX1ZFUngxMDAoZGlzcGxheSkgPT0gMzUwMDsN
Cj4gIAljYXNlIElOVEVMX0RJU1BMQVlfV0FfMTQwMTE1MDMxMTc6DQo+ICAJCXJldHVybiBESVNQ
TEFZX1ZFUihkaXNwbGF5KSA9PSAxMzsNCj4gIAljYXNlIElOVEVMX0RJU1BMQVlfV0FfMTQwMjU3
Njk5Nzg6DQo+IA0KPiAtLS0NCj4gYmFzZS1jb21taXQ6IDc1OTUwYjE1NjdjYjQwYTY3ZTkzY2Iz
OTEyZTAyMzIxOTc0NWZmNjANCj4gY2hhbmdlLWlkOiAyMDI2MDEyMi13YV8xMzAxMjM5NjYxNC14
ZTNwX2xwZC1kNTg4MWFiNzEyNzQNCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gLS0NCj4gR3VzdGF2
byBTb3VzYSA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQoNCg==
