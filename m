Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB6AA9617C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 10:29:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D93CC10E05D;
	Tue, 22 Apr 2025 08:29:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wdtgq6SY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 905E410E05D;
 Tue, 22 Apr 2025 08:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745310562; x=1776846562;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YdtGeKblIeEactNrgBmIFCdMaXlxDIcKbnO1OSQXF8E=;
 b=Wdtgq6SYef/rr6ZAzrZPde2xhwGzwXCK4yYek9yJDkiHdgyRho3EDnB3
 DpOS7Y/nEWZehYZidiyymkIxnNJf4mLvYTjUJqgBUEfq4uQTa+C5pbFhy
 SCpIz0hZRaeEqR14RHYfWRkg1SdzRe1xPnZ0Rg44EzDeDZHox397CJjRg
 cqUPLfHd6pT5ZBkCr/Q6/qNDo4ENMm3Dey4YZL3vKAvgIEDYfCX7Brj7p
 qTwWpuOkRJmfzRncCF6DMo+yGIqg/byko0O6C/oUV1GAnDy49GkkU/HMQ
 T8tnEwgoJDNb5hKbtPO9hVh82/+gV9EeAZuVyfz/zIY5iIzWn1c35+ksX A==;
X-CSE-ConnectionGUID: x2e1dh0VQYSMPlVy5WT9jQ==
X-CSE-MsgGUID: Bmj0UmDkQsGhxBQEte2EiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="64387325"
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="64387325"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 01:28:49 -0700
X-CSE-ConnectionGUID: diZ9HikyQXSlm6SnLAEVcA==
X-CSE-MsgGUID: adZO2ylcSZ6Gxi6GRCfizg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="131792162"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 01:28:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 01:28:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 01:28:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 01:28:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jq1mTq7DBJCdiqN9ZDH3n6A25UsqgtAXl21CVtWivzzFPRIaE+A7zb/WcVzknFOHY3msvc8q1kLtIGQPW7LV47uGx8BsHVJRznxS2PtAbBT8eSAeIwEY3XHtLvHdNttlaVUxXrSVIUWjHDiq3fFsV9qoomAkhSitw/9siSl0WCqfNIeibTSnMIOY5jT+E23iDYuwnZ2rxLc6AKJz+Kos+hrxA0Rm6rOf1e6y+SeGDDrWpdltzWkHQWmVrwhoLlQbfIiXoQmPjnQQzU+SSvQC2VBLdvAfoGDIIQG55dWSjxlmn/i6GsUoNdmpdPd0FFePL+MMyf2G3e2oqSpkTNdDTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YdtGeKblIeEactNrgBmIFCdMaXlxDIcKbnO1OSQXF8E=;
 b=l9R51pAzZXkBVJYFlmHtLqzvuOzPeGFR2gFtr7OSCJq3lO+s1Vo+ktBLhTEfZfMgnWto0drkPm6qB2/Dlxvh6j/WQyFx+oA608P5F7KFyhTiq3uGhjOLrGxCgXOSuGowK/J68i1CHG1yRnxiRtEORD03cDxE0RsEMjDtn8r9qccrnbj0+KTDnO2F99e3drasXNRJz8Jp6lIWS/OtN/h9hM9n1ldwDRC6K7/sEwbkHS+Je4WngreWqiVnTcy9jwO7qKaTM0Mkyi4khWw2L7XtfZ/VmRBhqUtNH7mnHOFzZJr9LKx6SEh1HxxOjcsWS4qcrdwQmLl51ilBShEQ/IQYQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SN7PR11MB7706.namprd11.prod.outlook.com (2603:10b6:806:32c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.33; Tue, 22 Apr
 2025 08:28:31 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 08:28:31 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 05/13] drm/i915/dmc: Add interface to block PKG C-state
Thread-Topic: [PATCH v3 05/13] drm/i915/dmc: Add interface to block PKG C-state
Thread-Index: AQHbrSXkAKM1q02FJEGFUEIFajgIjrOvZqlg
Date: Tue, 22 Apr 2025 08:28:30 +0000
Message-ID: <MW4PR11MB7054E6DDF840DE2D94A5F1FDEFBB2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
 <20250414100508.1208774-6-jouni.hogander@intel.com>
In-Reply-To: <20250414100508.1208774-6-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SN7PR11MB7706:EE_
x-ms-office365-filtering-correlation-id: 8bd8864b-8558-4155-c9b8-08dd8177aa05
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?UjN5SXpLTUNLczNDRG1BSXhJWGpiY3BqUFBpVU1icDQvVlJJNEJjODhWM0Rl?=
 =?utf-8?B?akdtKytmcDRvazJFZ0hrZVR3Ui9XL0FpVVdwa0V3WWZSTWlLaFAwd1h2UXho?=
 =?utf-8?B?V0tnU0tEN3IyOHBweUxoZVJmRWhOMC9GMHp3S2xTTHRJNFcwT0svaC9nWUdz?=
 =?utf-8?B?VW9RMjNoenBsZWhKVWhHUzRwZTRmSzJhMkE4L0h1M1FaUDNhN2RlVm1IRDd4?=
 =?utf-8?B?UTA5ME85Z3dxdDJLZngwUU5XWTdueXlWM253TXdYa25aTGRxNS8wVzVMWWtz?=
 =?utf-8?B?ZE5CVU5FamFSSTRVVHQ3c09BaVFKSkhvNDZ4WkF4T1B1Qlo5Mzc3S3FtNzZy?=
 =?utf-8?B?blp2U1hQRitrZ1BmeWJqMmJCZDlEY1IzaFlhQkpxMlpZcldEZVBVbWFHVExy?=
 =?utf-8?B?am9wM1FMSmFwNVh6aTc5NmRvSllFMGJYdngvMW1XQW52dElKY0U0d1kyaHlh?=
 =?utf-8?B?WVZCdjdCM3BhVTB3ZldhZW55ZjB1WXFmSDdlR2tiaC92VEFZQ3VSb25QZldt?=
 =?utf-8?B?Q0F5VUk1alBPNnNZTG9UUWszMFpSQ2ZhM204Q1VaNUlYZktVMmEvZHIzMTgv?=
 =?utf-8?B?VVVCY1p5UWFPZ3RVVUUvblNrR3dmOFdVMDNycnVINVllTExnamN6VmlaQWNo?=
 =?utf-8?B?SUdxL3kvYWQrWCs2WnFHZFJqN3FLQTFOVStDUlR6MmNQVjI5UU1vUzU3M2dv?=
 =?utf-8?B?Q2N4TExibGxxSUp0M1FCNVV6dStvTGxuTFdjaE9xdW1sbzY5Z0hma2dQZXVE?=
 =?utf-8?B?TWZLS28xa1JoTWE0U0ZzdEFoU0hmK1B1L1lIR0IyaVc0ankycUVVVG1vQzZH?=
 =?utf-8?B?V0QraGc5MStFbkRsRzlUNDh5RTlQRjBsL1lPRlR0Z0pKRDNUQVZvZzFFL2Vo?=
 =?utf-8?B?ejZYMHZqWUI5cDdMNWRHMEp0dGhhRm1jOHh0dWVaTmhwTkd0SGVSWG1zcGZD?=
 =?utf-8?B?Z0pSZkxwY1dpVWdyL3pQK2xZOG9KQ1krMllkdXpNcVdoUS9xODQ0RUZYUzBM?=
 =?utf-8?B?NmsyeWkxMWJKbkZIQUxLeWNkdU9KYU83RncvNjhVcmNoZTRMbTdWdHJFdjVR?=
 =?utf-8?B?ZGVCcFFWazJ1cUJ1SmgrK2t0ZjhwekJTeHRsaENWZTRkYTlsQitMeGRTckNy?=
 =?utf-8?B?MnB1V092NGZ1UUFveUVrRURNWUhPdVNBOGhRWmlsMlJHSnZCa3BZcjdqc3FG?=
 =?utf-8?B?eVEzU3hlUlpwVW5CTmJiNkVTQWxtWGVkTVhiYUxLVDNXWTFQeTc5d1RVUUdS?=
 =?utf-8?B?R3d5eENCMnlHa2d3NmVlK3BuYVJWYkVNSkZMM0NlcklmaHFOT0daZ0lKOWFm?=
 =?utf-8?B?OEN6VU5MYlQvdVZJaDVoSTkrSTROc1RKdFltdDc3RFJUMjcxaUExbyt4eSt3?=
 =?utf-8?B?SkYvbjR1bktScUhIQkYxQytUamUyNXBMMlMrNzB2UGtYbTByQWpsZlZJS3da?=
 =?utf-8?B?TTE5QWFtZHFKTC9ic1NNNllQMXVBZ2pqWTdWaXovWU1mY3ZNaHFTMFNTcllS?=
 =?utf-8?B?Rk1HUGxMZzBLTmhGRTNERHRiZlZLTTZibElwSURYdXcvU1cxYlZ4WlRzQWFq?=
 =?utf-8?B?NlBNQ0VxazRNaGE1cWVuY0pFRzFXd1dxTHRUQ1dseEV2bHRpbW8vUENMVVlB?=
 =?utf-8?B?SzBFZGFjUlgzQlRTTkkvUVFIOC9KcmVYNmVQQzJpdUtRbUc1ZHZoRnlFMUov?=
 =?utf-8?B?SFlyM3lTRGNycDN4ZWtIVFpaMkFYOVdoNHh2OGZMdmNTRGNVMDV5MTV5VXhr?=
 =?utf-8?B?UXpXS3RoMXR4dUVubVc5SEJSYXZCRGwwbjVZc1grbWt5SGplNlBnMmEzOXV1?=
 =?utf-8?B?ZnYxYll2dlUxRGFDMFQ1eFI2YzFHblZ6MktxTGZ4dUhBRzRoQXZ1WUxUUGU0?=
 =?utf-8?B?bTVRSlF3ZVNjZjRkL1o3eVdtcXpQNDk2UVkxcjB4WnFicDZhbEk1RFVPMUdw?=
 =?utf-8?B?eGM1bnZvYkxzYk0yZ2ZUaGlJZ1VJR0xkaGhHb3p4bW5VcEpUcGovM0FuU0xo?=
 =?utf-8?B?ekphU0dpdlJBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V0x2ajVjU3VhYnBkSjdtQUxuUkRDdmRMSStVa1NKR1g3Q3lHVkFxeVRNVmY3?=
 =?utf-8?B?Y3NZVHNFR2JWbWxqeVNoRXRnNFVvYmxMd2owRTJOVjdVWlkzajE4cjcvQi9P?=
 =?utf-8?B?eUJjQ0F4QVRDakYwekQvcXFUVWdhbFhZeHVmbXZmdEtaMHNhYXMyUS9UNVhr?=
 =?utf-8?B?OHI1b3I0YXNjaVp5U0tNVmxhNytodFUwcmpYWm5PTU5wY1gxOForenFoMWZm?=
 =?utf-8?B?Y1lIeC9EaWF2dWcvR1YyeFEvQk0wUEg1bk9mK3Nka3dzY3MzN2M3WHYvSmhU?=
 =?utf-8?B?eEZ3RGtuWXcyNjNSMDlDTkJLNnVoVW8yWk9jZG9CbDRnZlJzalRmQTg2bUdp?=
 =?utf-8?B?U1EzRk5tclc0V3o1SVRHWDBvcG9IczY3MXk5S21FZzQ2Y2pOazFkSGQyNjh4?=
 =?utf-8?B?WmZJcDNTSUhiRzE4SmRLZXB3SVpZK2NlY0VPNWpzTWJNcFhZWnBPZXZmOFZo?=
 =?utf-8?B?MVFMNUJXM2FxY0ZldnhyK3dlUVpZeHpSaHlDZUlZY3V4RkFMWGVDc1REbllE?=
 =?utf-8?B?eGllZW0xbUE1WmtTemQ2ZlBIOTlDdTBXK2lSc2dHNGFQbFc0d1lHSmZMM1Mv?=
 =?utf-8?B?bE9kOWI1SEFKdnpaNVYxeWhYRjdmb1g2NGhKUlBieTJGMUNjRlovOElZQytX?=
 =?utf-8?B?Vk85TWpDc3F3ZWJGMWl3R3dEU1pjL1dVSk90SC9YV004a3JpUExDMU5MMUw0?=
 =?utf-8?B?WWxFYXp4cEptdDU2NDczR2NhUEFMUXhTSFBtVEN6N2JYcThLNElXbWxsUGpB?=
 =?utf-8?B?WnprazNvaEdUNWlKZWlxMWJDMFNMdk0ySlhLb09vcVYvcExlYkVCMDM0cG9G?=
 =?utf-8?B?MUQ4SVl3aGRtMzhjK3ljVUxGVzhzOGRqZGF4MzFSTERqaWxQWDdGcFhGZEhm?=
 =?utf-8?B?blZyNlQ2WHlrTkMxQXJic0JHdlRPRUt5UmZ1eE9aenQ4TEgrc2pLenI0TGg2?=
 =?utf-8?B?MzF0b1VUc05wOVJGcjg4LzR2ZDN6Ykg5LzVJSnhLOE5PVDMyUFVtVVdyVlN0?=
 =?utf-8?B?bFd4endMSEFEWlF5SHZaWGtvMVBtR0h2d1E0M2lpNk9HK1pCc1VrZURvU0Q1?=
 =?utf-8?B?dUNmRHpJSENtUWNYWkRXcUVaVVZkQkNNUmhhYUtneG14ZE0ybWQ3bVQ1SmZt?=
 =?utf-8?B?QnBtNGFYdkJMWWtxck5XR01vS3lwZ291UXNoUklUdHM3SmhmN09vNDQ0TXR6?=
 =?utf-8?B?ek1sQU5kL3RHUXJQU1hVU2hzNDVhMVRncTlDL09rbUp1Q0syd1k3RmU2SHND?=
 =?utf-8?B?UHVRazRyV2V2UjVvUHpxZ1BEWDlGTUNTVVNCOVdTeENrdEFFNkdVLzhTMW16?=
 =?utf-8?B?cGwzaTFrMEFLSFVSdm50L2tyTkhQemhYdUMyaW5hRVF4UmpiRVUzaGhUYy9F?=
 =?utf-8?B?NDZHOEh4QVlJenU3V0xzS0tXdnd1Z1ZKc1l4OHZHKzBwODJnTFBVdC9EWkEy?=
 =?utf-8?B?VGtxN1RoTE10ZFg5VU12eXRoMXUycUtyZmVrc2xVN2huZ09SZWF4dXJLMFVQ?=
 =?utf-8?B?S0ZsbFA5Zm5TVXZLRzNCdzR3TVMwZU9TazRFbk5WbW1QU1cybDJPSEZDUFpC?=
 =?utf-8?B?ZEpBN1FhbkpUS3daV3hubHc5ZnYyU0lLdXYzSldkdE9uWFVoSW5aUHU3a3Rq?=
 =?utf-8?B?cHg1cHRwSXE5cEFlV01IaDBsZkVlZWZMenVjM3I2QW5VQnZGbnNKemlJNUpH?=
 =?utf-8?B?Q0RLN0JoZDZTNko1b2xqcnE3RU5SQTlvWGw4WXhuelFXcEl0alRiem14WVFY?=
 =?utf-8?B?ajhKdnNQNFRpd2lkVG41K3grOW1Za2ZkSU9iWDRXZmF2UE1jbW5DUFFUM0FW?=
 =?utf-8?B?ZGtmM0ZJNjlTUEhOSG5LVzNtL01rcVJRQU1nOW5FM3VyWVhRNU1nb250ejZL?=
 =?utf-8?B?ZVZyR0QyMHpaeElkVVVncTNCUVBLTG4rKzRZN0xLRktCZVJZeG9vSnpaVjVQ?=
 =?utf-8?B?SGMyeXVlZXBlMmZqNTVJN1VLWEZJR1I1M3A0ck50SGl2aHBBMEZMTEwwaUF6?=
 =?utf-8?B?S3M2NEg1YTFteXJZM2IzYUtrY3kxOFlaVVlKTmh5VUZnM2lTbVpyR3ZXTStN?=
 =?utf-8?B?aThQaDVGOUhHVDBWRUhRSCtxcEJnaHd0akNPVzZQeFNkZFM4TWRvQ1ZCZ2JI?=
 =?utf-8?Q?7xInun9EPUaHBkAK9yagggKWu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bd8864b-8558-4155-c9b8-08dd8177aa05
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 08:28:30.9454 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KZKy7zzjyy0V3Pai7kp3DxEn9W51L6kr8vJIj1Fka0HgtiDnxSUL6eWxu4uXaW2rRx0HNZ2XiBBzKumZIYSqkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7706
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pDQo+IEjD
tmdhbmRlcg0KPiBTZW50OiBNb25kYXksIDE0IEFwcmlsIDIwMjUgMTMuMDUNCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1
YmplY3Q6IFtQQVRDSCB2MyAwNS8xM10gZHJtL2k5MTUvZG1jOiBBZGQgaW50ZXJmYWNlIHRvIGJs
b2NrIFBLRyBDLXN0YXRlDQo+IA0KPiBBZGQgaW50ZXJmYWNlIHRvIGJsb2NrIFBLRyBDLXN0YXRl
LiBUaGlzIGlzIG5lZWRlZCB0byBpbXBsZW1lbnQgd29ya2Fyb3VuZCBmb3INCj4gdW5kZXJydW4g
b24gaWRsZSBQU1IgSFcgaXNzdWUgKFdhXzE2MDI1NTk2NjQ3KS4NCj4gDQo+IEJzcGVjOiA3NDE1
MQ0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0K
PiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jIHwg
MTcgKysrKysrKysrKysrKysrKysNCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kbWMuaCB8ICAyICsrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiBpbmRleCA5
OGY4MGE2YzYzZTguLmM2NTU0NGU0OGM0MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RtYy5jDQo+IEBAIC01MTcsNiArNTE3LDIzIEBAIHZvaWQgaW50ZWxfZG1j
X2Rpc2FibGVfcGlwZShzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwgZW51bSBwaXBl
IHBpcGUpDQo+ICAJCWludGVsX2RlX3JtdyhkaXNwbGF5LCBQSVBFRE1DX0NPTlRST0wocGlwZSks
DQo+IFBJUEVETUNfRU5BQkxFLCAwKTsgIH0NCj4gDQo+ICsvKioNCj4gKyAqIGludGVsX2RtY19i
bG9ja19wa2djKCkgLSBibG9jayBQS0cgQy1zdGF0ZQ0KPiArICogQGRpc3BsYXk6IGRpc3BsYXkg
aW5zdGFuY2UNCj4gKyAqIEBwaXBlOiBwaXBlIHdoaWNoIHJlZ2lzdGVyIHVzZSB0byBibG9jaw0K
PiArICogQGJsb2NrOiBibG9jay91bmJsb2NrDQo+ICsgKg0KPiArICogVGhpcyBpbnRlcmZhY2Ug
aXMgdGFyZ2V0IGZvciBXYV8xNjAyNTU5NjY0NyB1c2FnZS4gSS5lLiB0byBzZXQvY2xlYXINCj4g
KyAqIFBJUEVETUNfQkxPQ0tfUEtHQ19TV19CTE9DS19QS0dDX0FMV0FZUyBiaXQgaW4NCj4gUElQ
RURNQ19CTE9DS19QS0dDX1NXIHJlZ2lzdGVyLg0KPiArICovDQo+ICt2b2lkIGludGVsX2RtY19i
bG9ja19wa2djKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBlbnVtIHBpcGUgcGlwZSwN
Cj4gKwkJCSAgYm9vbCBibG9jaykNCj4gK3sNCj4gKwlpbnRlbF9kZV9ybXcoZGlzcGxheSwgUElQ
RURNQ19CTE9DS19QS0dDX1NXKHBpcGUpLA0KPiArCQkgICAgIFBJUEVETUNfQkxPQ0tfUEtHQ19T
V19CTE9DS19QS0dDX0FMV0FZUywgYmxvY2sgPw0KPiArCQkgICAgIFBJUEVETUNfQkxPQ0tfUEtH
Q19TV19CTE9DS19QS0dDX0FMV0FZUyA6IDApOyB9DQo+ICsNCj4gIHN0YXRpYyBib29sIGlzX2Rt
Y19ldnRfY3RsX3JlZyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gIAkJCSAgICAg
ICBlbnVtIGludGVsX2RtY19pZCBkbWNfaWQsIGk5MTVfcmVnX3QgcmVnKSAgeyBkaWZmIC0tDQo+
IGdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmgNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5oDQo+IGluZGV4IGM3ODQyNmViNGNk
NS4uMjM2MzEyZmI3OTFjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RtYy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZG1jLmgNCj4gQEAgLTE4LDYgKzE4LDggQEAgdm9pZCBpbnRlbF9kbWNfbG9hZF9wcm9ncmFt
KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsNCj4gdm9pZCBpbnRlbF9kbWNfZGlzYWJs
ZV9wcm9ncmFtKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsgIHZvaWQNCj4gaW50ZWxf
ZG1jX2VuYWJsZV9waXBlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBlbnVtIHBpcGUg
cGlwZSk7ICB2b2lkDQo+IGludGVsX2RtY19kaXNhYmxlX3BpcGUoc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXksIGVudW0gcGlwZSBwaXBlKTsNCj4gK3ZvaWQgaW50ZWxfZG1jX2Jsb2NrX3Br
Z2Moc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0gcGlwZSBwaXBlLA0KPiArCQkJ
ICBib29sIGJsb2NrKTsNCj4gIHZvaWQgaW50ZWxfZG1jX2Zpbmkoc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkpOyAgdm9pZCBpbnRlbF9kbWNfc3VzcGVuZChzdHJ1Y3QNCj4gaW50ZWxfZGlz
cGxheSAqZGlzcGxheSk7ICB2b2lkIGludGVsX2RtY19yZXN1bWUoc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkpOw0KPiAtLQ0KPiAyLjQzLjANCg0K
