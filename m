Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AEE9FC165
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2024 19:54:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D02D010E496;
	Tue, 24 Dec 2024 18:53:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V5iXv+je";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC4CC10E496;
 Tue, 24 Dec 2024 18:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735066424; x=1766602424;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=lT2iFlQx/IMI9IWVEVjcQTAWT0B4o4F8UAP1VEda2gs=;
 b=V5iXv+je7I/AII3SEO2fMZb7C3PQvRMQ6BrE/NJSZeY9X80o93SIjr+/
 UxpDNe02fVsIftiakvgWlkZ6IrsTrmhf7xskZmx79coUujS2LNxhDEi9H
 peSUplKpZqAH6HKJtMdGIyhHg2dsEwwxq2ATVeYZYqiCKx4zfGfTnFb4/
 B5dxChLF97I6G0kH8O7im7jL3f6iWFGGP0KT8MMUqlJlqZnq8WOv0WpK7
 RUSqq6kWP3ql4T+hhvwzlUaYH4U5NlqcT1A/8hgF+AFdPdSfTzEHhD6xl
 ko+96pjWgniPmOciQiDY0uIPUs7KkChYS+YSsqsbWhIzvfnnWRH2i5kDZ Q==;
X-CSE-ConnectionGUID: lhD7JCI6S3K5Saqm7x7y8w==
X-CSE-MsgGUID: OpC93dQMTmeQHmuqloDFqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11296"; a="39216926"
X-IronPort-AV: E=Sophos;i="6.12,261,1728975600"; d="scan'208";a="39216926"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2024 10:53:44 -0800
X-CSE-ConnectionGUID: +vT8RSH4RUaGLq28oun0FQ==
X-CSE-MsgGUID: BIL+9CbbQnyReMGcLa8cxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="104624524"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Dec 2024 10:53:43 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 24 Dec 2024 10:53:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 24 Dec 2024 10:53:42 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 24 Dec 2024 10:53:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dPfBOl0tuUL2JPJgoeRVqb+MrHWGN4hJXmu8ZwnkmaHLED4CIQLAWl8c5KGfMUA2TsmxcH8DVXB+4sHeCGC87aZE3C2mrCqRei41sF8W79FQwZG8yW+unRmUtH0gjd0a5re6hWaW7PzAjKDV5IHOr7YdLTxtU7sr4h1cr3ts0geSfIlS+JNf/f9BkjQttx6EGx8bVgKZ4ErcaFG1v7kux3sIxf2j6AZYUEh1kcuLX16C/bjZPoqETejwb74+7x2UnLhbhWFF2Yz7MWJeKWcgqLcMydleKXQO90ux8ge8ba1vUH67iifbM2zO8dLwmvSYV81OSn/aaczbkdTUzATzJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q5F6abdZovM+BwOAq7dmOEPJYCw/BR14iEyRBsDiCYI=;
 b=fKeTTGxiezK/xuJ0eSW0P72KTPHxLxc4o4+DlM9yiHbvhN+JGHIh346eM2lkenftL+W9g7t/ixj6yw+5pe5RDPiPiaC1Ri4+7bWOj2wPFZgCb0iKptoHmaKT0Xj5O6EYQlSdZG7LgthO52tA6jfTSYi9vshsznk6gUNImmGuRnAzga0iMCXQbP+q+4O2U2Xe7Ev3uf/semWO2jqoBSxIFhvTrI9Ja8Um/eEdbgq4zNzqn26GfUYBf3XdHWbjUjm8/I07KM7ge0ciFOvhhNbWeFCbY7fqsXX23hGIsx9ZnPiN1cKZCYqET/1yqek/y7jLKat8+StOmLv3Vy/h15FLEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY5PR11MB6319.namprd11.prod.outlook.com (2603:10b6:930:3d::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.21; Tue, 24 Dec
 2024 18:53:37 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8272.013; Tue, 24 Dec 2024
 18:53:36 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173506238037.2555413.13055112564182436764@b555e5b46a47>
References: <20241224165408.43778-1-gustavo.sousa@intel.com>
 <173506238037.2555413.13055112564182436764@b555e5b46a47>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.BAT: failure for drm/i915/cmtg: Disable
 the CMTG (rev3)
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>, <jani.saarinen@intel.com>
Date: Tue, 24 Dec 2024 15:53:31 -0300
Message-ID: <173506641126.1822.9650511823538038999@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0291.namprd03.prod.outlook.com
 (2603:10b6:303:b5::26) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY5PR11MB6319:EE_
X-MS-Office365-Filtering-Correlation-Id: 7209bb61-2dad-4013-8d80-08dd244c45ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dXl2RkxVZE5mK1U4bThUeEhWbmgxUE9Da0w3ejB1Uk5Pc1hFNU9wNVB3dUcr?=
 =?utf-8?B?YU11S2FOOGZrZ1ZJYjVnN2J0aFNEODBVQ2lGMGtCSmtDdEQydVhIS2Z1M01o?=
 =?utf-8?B?akcybTc5dURNL3A5bmFDL0xhNlFtSi9TUldGMXNyUjhQdStmQWFhZFJoTkhT?=
 =?utf-8?B?YXVmZStIeDc1ZC9JYjIzL3FTOVgxdVNaQm1acEh6RnRjempXTU5JcVBhdjl3?=
 =?utf-8?B?YzlpeTRxN2JkWG5iYlFCMStFNlpjUm1lS0hiWFVQdlVoUU90OG5VOW1Uc1Av?=
 =?utf-8?B?VE1nSjM5MTkzMVVpV09kTkZ4M1B5Z2RodTVKbkhjNUdNTm1HTlQzRllYNjNZ?=
 =?utf-8?B?VzZDSlhRSjEwanBma3ArZEY1RXNRaEd0SUs2dFJYay93em1QL29BbkFKQ1Bq?=
 =?utf-8?B?bUFiZm9DUjEvMm83S0llRnFlZEZZS2NxeWhkUGtWM2EyajF4OFp2a08vc05D?=
 =?utf-8?B?eWNURzVZUGhQZjFEVTlmNnlpcFg2VHBmUDVUcktXOHlZRWI4SXdES0IwZnNJ?=
 =?utf-8?B?cll3bGpzMWl6UGhEYnVxYnNzWDhsTkI4U2RYdmc2dGtVcmY4cXpQOHloeUt6?=
 =?utf-8?B?WUtOY2pZdDUwQ0tFLzZOZm0wMURPYk9RbzZPLzlpWldJVS8xVU9FbURFSU01?=
 =?utf-8?B?bVMyVjV3VEdSVko2ZlNLblBIbTV2K2JoU1lHcENTYzRVdlFVZHJnU3h2anVp?=
 =?utf-8?B?eVhyS3lPcEVKK1VLazF4RjVta1ArRUxQYVE1V2p3OXYrQm56cVVrOUF0Z1Ft?=
 =?utf-8?B?M0x3dzhLTTJzUklyT3pNaVVKV0J4dWZtSnJmM25HT2ZnejFWKzVNQStkVEFV?=
 =?utf-8?B?VEZUMlp2QzBPQXRmNUtOcDZjT0ZyOWo5a2FVYXJMYVNBd0wrSGpUKzZZM2tF?=
 =?utf-8?B?eGFUa1FWVFRQQXJIRmRTbEhmdks3ZjZuTW12ZkdGa0JTdUdCKzluODVKRGxJ?=
 =?utf-8?B?dWdWbCtkUmhzWExJZGd2eFdKR2kydkx1b0hnZk1sZDFSN0FCNlVmRlAyaURW?=
 =?utf-8?B?ZVMrR1pCUGZyNnROS3FySGZjcmNVREoxSm44bGttRG9QN0dFeHZsTCtPZEQ4?=
 =?utf-8?B?S21GVk02V0tmZDMzTVhQRG1rbGs3RC91bjNpWXFRTmk4ckd0aVcwTmVuVWpp?=
 =?utf-8?B?M0RQS1ZQbDhubWVtcXI0a3M1ZlZqYkhvbGJiTk1GcTZyMThZUmcyajlOeXhu?=
 =?utf-8?B?UHc0Q3A0Y3BNK0ludEVTZ2oxU2xkUFNzS0lTZmJGYVFBTldiNkhiMGtWMERr?=
 =?utf-8?B?NnNDT3lKM0hZUGhkMm1KbTE5V0t3MnZTVVZMUDcrUUVBK1hXcVE5MHZ6UXdW?=
 =?utf-8?B?ckhWZDBkRmxObk5aSEdHcEJRTFo5bktzdDhVTkp5ZlBBdzJwcHJsRUtHYkp1?=
 =?utf-8?B?TFltRElKL21BUDlDS200dlczNEpjRU1DRk9KcWtGWVNTZ0RrVi8yV2h2cU4z?=
 =?utf-8?B?bXozSHZIY0V4djVoVkZGcGU1aHJkekFZWUZQVlJMZ3dPeE9ITG1TZzRMT3ZL?=
 =?utf-8?B?MFpKRHV5bUR0Vm04bWNxVWIrdnF6cFQ4eUtuMllvb0NJOFp0cFJXNU56KzRI?=
 =?utf-8?B?bGRsZ0tYZTVDcllJRm9RemZFQ040aXVNQ3dZZXFRazhnZERNTzRnUURZQUw2?=
 =?utf-8?B?U2tTR2R0SmFla3lzUkFnN3NydnlWbVFGblpXa1dNc2w5aXQ0cWs2Q05iVHdG?=
 =?utf-8?B?SmtNUE9NenR0NnlEeFc3d2g5bDBCQUhwMVQrTnk0RmdOM1BwalU5Sms4aHYx?=
 =?utf-8?B?cGdzMm5xL3dzaUNJc3p2R2RPWmkzK05DVmFncHFlWkhTUGZjVmRKRXRJTFA2?=
 =?utf-8?B?dXowQXFtUDRIeXdnSVNmQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUZwQzVWSGVhQm5ncTBTUDdzVTZ0dzRUTy92NWZRenVwcDYyclYvamVncEhh?=
 =?utf-8?B?ZUFGWkU0TUlUaFY4YURHWTMvQ0hkQXp6dXpBREZWMmxmWmNRaXpNYlYybElq?=
 =?utf-8?B?OWI4TG5XQStCaGNDVmFxMWxGMXJ3SVgvOXFHOENNOXpIelNwa2wzWGU2a0M2?=
 =?utf-8?B?aTlqZXBHaENLWnRwV2F6VzVYK2FPSCt6WURMMFJMSUJjTEVCSnlSQ1pub05o?=
 =?utf-8?B?YUt4LzE1M2hscUFWdGorb3BpTEtjNmYyaE4vSE5sWjhTcFBRVVN6UHc5cG52?=
 =?utf-8?B?VTdZckcyRU9JcjZURHpyY3FrMmF4UWNRUmtJQ3ZjSFJnSlBDOFdpUEIzWThX?=
 =?utf-8?B?ajkvQ2s2QzRueGdMV1VUOU1QTzRMRDBOcllhMmpoMy9PZ25Nb0lmaSs5UUFy?=
 =?utf-8?B?ZmJ2V1ljV1NaaVlZMWVKUlRqV00wQ1pGeHVOaDV5dTlNYnVwQWZSL0U4NVpI?=
 =?utf-8?B?N1UweUt5ZDdHdGthR0diR0pwZVd5aU5nSmE2ZW1YRXdvNWVTdkN4ZGtqaUph?=
 =?utf-8?B?bDNJaC9yMWpyRzU2WmIvNm42VjFKZm5DV09RQUEzN2pCcVdWU25GRndZWFc0?=
 =?utf-8?B?VUU2ekRCUHdING1jMTJoc2FRZ0RCbGtGOTZyRTZEZGozNGdmeENnMEQ1cHpv?=
 =?utf-8?B?SEw1bjU0MjZaL2xwWlZnL3k2bnJPQUo4SGhNYjA2V1ppUWdOaWtQVEFLVGtC?=
 =?utf-8?B?MEVOMStVZ1NWNnlEQS9CZmV5cnk1aGZEVDd6K2ZORXhGbzhpNG9oOVAwTHha?=
 =?utf-8?B?SnZPcHFYT3NyTVkzcjR2Zk1BdXdHb0QwdXFRa2Q4Z2dRODJ2RkF4Z3JSSGRT?=
 =?utf-8?B?N1JpeG5ZdWtQc3FiOHlON3ZBUm5EMStCaHFzWGpMK2FxVk1OWXlwRFpsL09q?=
 =?utf-8?B?c2tDREkvL1BSSTJnQWhJQXVwL1lZRHY2Y2xva3diQk9aa09ieldNMS9Qb2xs?=
 =?utf-8?B?U2ZMWStnYWF0S3BhRTFUakRONHhsZmNUTEpFbVJKUkhZUHE2ZHJvMVlJVHpD?=
 =?utf-8?B?YjVPTmZxMUVqQ05yVUNYM2NCaVExb2ZxaTRET1dteEpITjJkd1U0WDh2NXE3?=
 =?utf-8?B?YXVERkZDYm9HU2M4YTV3VFJISjRkcDM5SE50NDlqUmMrSVFHL25kVEJ6SnJH?=
 =?utf-8?B?NHBDNmEybHdlRTVEbFViS0VYZm9JZUo5NWFlRlY0akcycnYvRzlmZlprcmg0?=
 =?utf-8?B?WGpIMWxsQnFMY1huTUZQdms5cnpTWWNDVjF3WjJRZlAvRkg0TDhUSjVSdmg0?=
 =?utf-8?B?VTQ2WE8vQStuTXNrTy9ScHIyQTdockxEVnBWQklwZHdsMVh3WWovaEZGdEVI?=
 =?utf-8?B?U01WQjJKNXBNakNmZWlEZEo0N21mUmlhVnVQeHYya004ekV4Z3Z5TUdpcjlF?=
 =?utf-8?B?ckU0a2EvOWg2QVBTR1VrK0xhYlE3VFRoQ0ZmdDdrNTlaaUo1SGR6cjRVTytS?=
 =?utf-8?B?eEhlTkNQVWxKRXdpdkY0Ym1iV05BSisxWlJ2dDd2TmVYUlM5cklNcVRydlFX?=
 =?utf-8?B?dmJvT1Q5V3V6MW5XZ21rK1VEVEltVVhkbUhxL0tRdnBOOHNGR2t5Z0RLWStM?=
 =?utf-8?B?a1dvY1FKSHAwakZRMFg3aHNDMU9NRk94NzJMQ2dVQ1BLSWd0b1NuVE9mVDJY?=
 =?utf-8?B?cDM3Y2tLc2VqWG5QUTI4cGp0REFPZi83Z0lCWDNCdTU1N3NIZFlHRHFSK0g2?=
 =?utf-8?B?Vkw3VVJBWjAwNXB2TkVlUmhYWWNHZ0RjV3Ayb3dYbTBJL0tkUjVwdkJ5eXhJ?=
 =?utf-8?B?SU9jL3VSUVpKbjNDTTR1cjcvQm9YbkZIVmNxTWYxcTJ4VjAyWVZBcEoyT2lo?=
 =?utf-8?B?Ujh3RFZTMUNWU1VKRXRkRTZvT01RVk1lbFpEY3c3RUF3T2VUZkNPSVpJTFFI?=
 =?utf-8?B?cGd3SVZJRkhJV2pKNklQdCsrN0cxSUZsUEl5WVpnTndJSFJqVVZlVEhBL0tQ?=
 =?utf-8?B?NHQ3a21hbHN4TVlDWHJCZFhwT1dKdHR4K3h2WS9BblRTNEcrQmJHaWh0K2l5?=
 =?utf-8?B?OUxSSkFoSUZCdVcyMFhDalRQOFVZOXEyblBEODZKeHJSZGVQTmIvU0h2M2ta?=
 =?utf-8?B?MFVJYlBtUlhxcWFhV2lNaGZXUjB4ZmtaZ3FTZklCbEZodnpDcG9MU0VqbDlm?=
 =?utf-8?B?SmRYRndRV0U1aElKNEkzU3FxQVdnMW16UmdUSUFKTk01aTJYbW9zOUN6aDRi?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7209bb61-2dad-4013-8d80-08dd244c45ed
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2024 18:53:36.8857 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZOzKRhvKsOC0y6GPQja6/aDiRUbqzXKOx8VLnrbCr9peH+ZOXMyd42Lldva9jjgfM2QY2IJzx+Zezmsg+pdFFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6319
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

Quoting Patchwork (2024-12-24 14:46:20-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/cmtg: Disable the CMTG (rev3)
>URL   : https://patchwork.freedesktop.org/series/142947/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_15892 -> Patchwork_142947v3
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_142947v3 absolutely need t=
o be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_142947v3, please notify your bug team (I915-ci-i=
nfra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v=
3/index.html
>
>Participating hosts (41 -> 40)
>------------------------------
>
>  Missing    (1): fi-snb-2520m=20
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
142947v3:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@i915_pm_rpm@module-reload:
>    - bat-dg1-7:          [PASS][1] -> [FAIL][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-dg1-7/ig=
t@i915_pm_rpm@module-reload.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v3/bat-dg=
1-7/igt@i915_pm_rpm@module-reload.html
>    - bat-rpls-4:         [PASS][3] -> [FAIL][4]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-rpls-4/i=
gt@i915_pm_rpm@module-reload.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v3/bat-rp=
ls-4/igt@i915_pm_rpm@module-reload.html
>    - fi-tgl-1115g4:      [PASS][5] -> [FAIL][6]
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/fi-tgl-1115g=
4/igt@i915_pm_rpm@module-reload.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v3/fi-tgl=
-1115g4/igt@i915_pm_rpm@module-reload.html

I don't believe this is related to the series. Please, re-report.

+Jani,

The signature is very similar to what was once captured by i915#12903,
which was recently closed.

[i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903

--
Gustavo Sousa

>
> =20
>Known issues
>------------
>
>  Here are the changes found in Patchwork_142947v3 that come from known is=
sues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@dmabuf@all-tests:
>    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][7] ([i915#12904]) +1 othe=
r test incomplete
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v3/fi-pnv=
-d510/igt@dmabuf@all-tests.html
>
>  * igt@fbdev@info:
>    - fi-bsw-nick:        NOTRUN -> [SKIP][8] ([i915#1849])
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v3/fi-bsw=
-nick/igt@fbdev@info.html
>
>  * igt@gem_lmem_swapping@parallel-random-engines:
>    - fi-bsw-nick:        NOTRUN -> [SKIP][9] +42 other tests skip
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v3/fi-bsw=
-nick/igt@gem_lmem_swapping@parallel-random-engines.html
>
>  * igt@i915_selftest@live:
>    - bat-mtlp-8:         [PASS][10] -> [DMESG-FAIL][11] ([i915#13393]) +1=
 other test dmesg-fail
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-mtlp-8/=
igt@i915_selftest@live.html
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v3/bat-m=
tlp-8/igt@i915_selftest@live.html
>    - bat-twl-2:          NOTRUN -> [ABORT][12] ([i915#12919] / [i915#1339=
7])
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v3/bat-t=
wl-2/igt@i915_selftest@live.html
>
>  * igt@i915_selftest@live@gt_mocs:
>    - bat-twl-2:          NOTRUN -> [ABORT][13] ([i915#12919])
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v3/bat-t=
wl-2/igt@i915_selftest@live@gt_mocs.html
>
>  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>    - bat-dg2-11:         [PASS][14] -> [SKIP][15] ([i915#9197]) +3 other =
tests skip
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-dg2-11/=
igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v3/bat-d=
g2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>
>  * igt@kms_psr@psr-primary-mmap-gtt:
>    - fi-pnv-d510:        NOTRUN -> [SKIP][16] +31 other tests skip
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v3/fi-pn=
v-d510/igt@kms_psr@psr-primary-mmap-gtt.html
>
> =20
>#### Possible fixes ####
>
>  * igt@core_hotunplug@unbind-rebind:
>    - bat-rpls-4:         [DMESG-WARN][17] -> [PASS][18]
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-rpls-4/=
igt@core_hotunplug@unbind-rebind.html
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v3/bat-r=
pls-4/igt@core_hotunplug@unbind-rebind.html
>
>  * igt@i915_selftest@live:
>    - bat-adlp-9:         [ABORT][19] -> [PASS][20] +1 other test pass
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-adlp-9/=
igt@i915_selftest@live.html
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v3/bat-a=
dlp-9/igt@i915_selftest@live.html
>
>  * igt@i915_selftest@live@workarounds:
>    - bat-mtlp-6:         [DMESG-FAIL][21] ([i915#13393]) -> [PASS][22] +1=
 other test pass
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-mtlp-6/=
igt@i915_selftest@live@workarounds.html
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v3/bat-m=
tlp-6/igt@i915_selftest@live@workarounds.html
>
> =20
>#### Warnings ####
>
>  * igt@gem_exec_gttfill@basic:
>    - fi-pnv-d510:        [ABORT][23] ([i915#13169]) -> [SKIP][24]
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/fi-pnv-d510=
/igt@gem_exec_gttfill@basic.html
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v3/fi-pn=
v-d510/igt@gem_exec_gttfill@basic.html
>
> =20
>  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
904
>  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
919
>  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13=
169
>  [i915#13393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13=
393
>  [i915#13397]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13=
397
>  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/184=
9
>  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/919=
7
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_15892 -> Patchwork_142947v3
>
>  CI-20190529: 20190529
>  CI_DRM_15892: 08bd590935a5258ffd79355c59adffd72fb2c642 @ git://anongit.f=
reedesktop.org/gfx-ci/linux
>  IGT_8172: 9112581619aa198fa03041d5c7e18e02f42ac00f @ https://gitlab.free=
desktop.org/drm/igt-gpu-tools.git
>  Patchwork_142947v3: 08bd590935a5258ffd79355c59adffd72fb2c642 @ git://ano=
ngit.freedesktop.org/gfx-ci/linux
>
>=3D=3D Logs =3D=3D
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
42947v3/index.html
