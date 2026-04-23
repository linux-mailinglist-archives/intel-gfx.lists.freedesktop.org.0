Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKYLB5v96WmeqwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 13:08:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DFC45117A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 13:08:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B187210F0B3;
	Thu, 23 Apr 2026 11:08:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g38Y3dZL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C199A10F0B3;
 Thu, 23 Apr 2026 11:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776942483; x=1808478483;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GcvilL1371hadGVhuvH+wYXSTwbQjzZoELXMLMe4tqU=;
 b=g38Y3dZLOKcYFkj0ba5oB7B6MMM3r17k4u2mwiPjsHpcil+RzH6hFwrM
 NMJZ8A58VUF7Q0/y1TsurYzB3iP9On8hA7MyCCLsEPUm6mJXUKgiTcpyd
 Xuzqeqeptus1TOTtKHZiWdG7DFKrG3yR+5aqfalyYPhKvi3gRIbc+PyS7
 DDJkPtlqpSzqDdKVKibcWaOyBfALIPmmVQReS46KiZMTIlbw4X4O4J1r8
 g5se2NFdQSLvLpIJFTgA5YCnQ40RZWEOL7egYLK4UGDRwYy2CRYPAf9aK
 ydkkegJ0zJZ7mF/A2njVFXdfp/QSlvxsgDiQ2HWfcv+UfkunMT7GV2pet Q==;
X-CSE-ConnectionGUID: AnWYB9RsQOmC1HLyZMu6aw==
X-CSE-MsgGUID: kNXIGEeGSqKBXbdUW1keLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="95468600"
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="95468600"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 04:08:02 -0700
X-CSE-ConnectionGUID: RJeyG7bOTnCVR+yRnYuYFQ==
X-CSE-MsgGUID: cQAtCw5GS8uq0/a4oOSLJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="232938649"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 04:08:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 04:08:01 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 23 Apr 2026 04:08:01 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.45) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 04:08:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZNM0zJYWzpARm469l502fwwmvSITxHFyksriHj3JNtowi/QdW+mJ0DT9mS4JKz4JoVgHcS0WmdpYgEKrlEBL4EgRkZMGINkPs36Zxs78VVU5e/OCw1vu9dV+XtnjAWUfUpvIi24n05P32491GEF1czJJs8ARAhGRyIQ67UdEH3vx/LCzvfELFPzeqtOYSudt5v+AXoOyj9xeHe8dVVARdgIeJTj3tNQEBwd5Cp/9RJi1QOt7F3KcURRmuuOX7geel4rIu3fZWuY+njtIA/aQ99UI8VbRa91wGoPwppPl0uMmw3ie6KceyRKbMk7B9O1AgxPmnnFVlsSwBLzZAj43hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fGAYw+c6h7rCwTkY1sNGgZPDpyKF1gHh9tWJo+wtU1o=;
 b=OQPI5Eoa6bRE5viEI0+vvZQtQnj1atf4xgsZ6+yWoX2eh11YOuHHCeMHcW6YyV293hxgfEzXcZ7Zy/DUF85gdwm8BzQRp68qR7WBfNjTgwXqyx6E4iyIwD9u3TKgDtp230psn0CoR+wb5YqxtvuBEyWw18hcdd3Hj7fmu7KiWGa8vBltwLeDbrPy8VZyH0Dzgyw9bRwVb1yqFhBv1eCULu/DUJnNbvOsINYiXF9Qog4IindsSYhtyH5TKrCN9QFYjV1BQt5gqdPFpg8tuh/U++yIqhydq95Q6OVFs4xcwk3PWj5JYReIAaP6zdZVRZX1IuziERxhh6bI6hW/a+0Z7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 PH8PR11MB6561.namprd11.prod.outlook.com (2603:10b6:510:1c0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.21; Thu, 23 Apr
 2026 11:07:56 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.20.9846.021; Thu, 23 Apr 2026
 11:07:55 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "Shankar, Uma" <uma.shankar@intel.com>,
 Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
Thread-Topic: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
Thread-Index: AQHcymygLFle3YrMBUK3c+JVuOmCk7XekaCAgAQ3pTCAAEtSAIAJESQggABjuwCAAADesA==
Date: Thu, 23 Apr 2026 11:07:55 +0000
Message-ID: <DS0PR11MB80493A1ECB27DC4548EBA882F92A2@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260412103712.4021213-1-animesh.manna@intel.com>
 <20260412103712.4021213-4-animesh.manna@intel.com>
 <d9c82dabf89fb932b3c10aa0ee768fdda181c396@intel.com>
 <DS0PR11MB804961654148D027B4F03601F9202@DS0PR11MB8049.namprd11.prod.outlook.com>
 <aeIK8oEzWAkDJw5i@intel.com>
 <SN7PR11MB8042195650F92982C02967A8F92A2@SN7PR11MB8042.namprd11.prod.outlook.com>
 <aen5uNCEibNR7IGP@intel.com>
In-Reply-To: <aen5uNCEibNR7IGP@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|PH8PR11MB6561:EE_
x-ms-office365-filtering-correlation-id: 79b8855b-3a13-4ee5-12ce-08dea128924a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: tEo2xPDUW97IE8Xg4jxEmVlosoiokHXpiylXR1cB3XbuzVrdak43mXQgGxkoZ9scZCRqzhzhTiEVwt2tSEIJSJR6clHyEiolNloeIm7TXX7V130fv7//yZV1QjnUO7GiTmTULxhCMpew1ufEOFnLbSzkIDuGO1/5vu6FeO0Aqhq9hsvZO56oLuokbuR13OCnk3qNNOMYy5nAfpoyiwggglj/9c+xL/Mkcr2q2pwsXwyLBWJ3WrjkwT+zdkSGYqyzYYlCXkT52LogZjtbAxWdmdcrS3OK2pboNCgr9nuHzBrjEoiANhnEa9nOSERkK6mvuE6rJeT03K46gIz1ni4yaWCKliWdAU+N/z6J4/YOHNRP6+uovm5Eag9t60sxUq5ryENvl5Qy4cPiDGlS6zzp68R/1VFlxVMgZuxp+fgNq5/1KZY5CsfqYRP6kn7JlmnipN7UBHTZL9BTUOvyyJ5W80IDCWK2x7kkCl/o8lfUxq3VLQ2QFQCmfLAcnWgyjdaLpoUbiJ+Be5wuw7sagywJNNkrBZAYaxl84UJQrOZ0rIfSCdcBCTNUOImn6PfzucDwiJHyTOTeeZEr3lUhKKD6jd1PiAmsHViGkf7hvFCztSCLgZmaiaWzhdr7Ndiio2/i1ls7Gs/HfqULg1uHr7ZlAmp0tnxCuJ22TT3YNNUYmgw5NBV6Rm2tWMi4zes/MA94ieA+o8/ckUDT3NdI8oktEEPg4RnB2UEIv8g9nPvzoEn6fL44MjfBwQCYo5ARSOC/ORjiQbNDXQEh+JvDI3DKiN/ICrJtqWh0MlAF90y98a0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Oeu7ceTnLk15RA7jaqXcPnKZ4c3K1bDAvsUqA/BCfJl3kuoxl+v/3BXNIr?=
 =?iso-8859-1?Q?OGwQOTdFpl9IWl9DRhB7TXPFyY+dtaZbMMdRu3rSjb3Kpx/s5gR3Gz9bwF?=
 =?iso-8859-1?Q?u5TMnsCvCQKtMBNAWT4fMFDxq6a2rY+4XoLD7f0NMGdzrjEmcsT03DH7cj?=
 =?iso-8859-1?Q?s9mtP71BNnGjIQcD8cBY17Gjc9sWq9Gs6ZAlDiame5RQ7emv5oCTWqgdgA?=
 =?iso-8859-1?Q?oR2HvEY79JWdHv08G2xDg8U8VkOINzXjwZCoo+Ri/05kI4OqUNzZOYMLnd?=
 =?iso-8859-1?Q?vyRX3YQeJiWFkSnY1LiJMDiozFCu6mHeRYe5qbnDuRZtCEnXaXJRH6sSNv?=
 =?iso-8859-1?Q?3uriIXo2OkZlUjdeq5D2vPelk6o+51Zes4tH90CDd7gDbhmd9V9D2f3yIp?=
 =?iso-8859-1?Q?jmMdf63K5rgfDkPhHVI5Vw8f+J9v4oUuxL716TsSG/oLYEHdkqWr5TYM3W?=
 =?iso-8859-1?Q?DlDJzGv9pDHQfCUw+fvVc59mVngzad6Aksuq9zZbVG85+W7ADjKYugaU74?=
 =?iso-8859-1?Q?+cJQlEqVKyQudK4jBeHoVMd6qdC8G4c5IEm95XXZwLhq/TV1/i85XX5Ss+?=
 =?iso-8859-1?Q?eAqsIQGFoXyk+kXflOQgtQrmrbtFBcz90kCF9bgt3wzo3tiQeT1THucaQf?=
 =?iso-8859-1?Q?ctESWE125hBcvXXHtNIFO3+MpER+Il/U9BZBXmbJPfqpthkLsAc2RF3Lon?=
 =?iso-8859-1?Q?1iZSaMdSNWDqI+gdyqyms66+gDYd2QUgyqMLovaPkHoFprfhgI4c/rtQaa?=
 =?iso-8859-1?Q?gS6qP3Y3YOtck3X6kgCYx4/Nkr0L+I4UtqAQnDAPvdVnVBHDY/9hAn3sqP?=
 =?iso-8859-1?Q?/Dlf8ciFvlsVfagl4Thty/yIqxiiemzcXKvkVijetw9vuzMggdX80XUoV6?=
 =?iso-8859-1?Q?PCEYn69jSmA6BxLS11bIXTwDEX8NudXqPni9TAHhhiiRrn7vJdYJi//ZDL?=
 =?iso-8859-1?Q?0evp052RF9LBUEDPbsK4xBnnrnC+ntMA5tLemCYdK7hnRunyLEofAyLBPQ?=
 =?iso-8859-1?Q?8kiQmpsOzBctXmNqMP1JUcCWjZZNtFD1vcEOVe0nZ5zOqV3YjXDBsKX95g?=
 =?iso-8859-1?Q?gIYIijo7cVd0aaG8LqQVRjJfCn+n4mShETCOm1F9G27nnt3qQ2cZ2VPdp+?=
 =?iso-8859-1?Q?6hDClgLxhMIY7XItnI/PndSgvUR48M1cT8s8J0OyQIX2SyCN427GswcQTt?=
 =?iso-8859-1?Q?cYy2sxUkPaTbD367rnhjIBdvhI88wjzfE1ea0WaPEjFcDy4MJp9c6hicgn?=
 =?iso-8859-1?Q?wGhT4dFzVb6+Cs5M8KbV0qwQYMEEKz/Rhvfywj2btzXq2Cq5RbV8Ecy4St?=
 =?iso-8859-1?Q?trQ5vNW9J5roSMu6EK706KbQz0B0+fSFj6eeKw/fz+IREW0Up1Tco9NlvK?=
 =?iso-8859-1?Q?AXumlAi3glnZdmg9M4snxt3XdrGOXQaLn7rSsrzydH9kigKOT09k8W1z+K?=
 =?iso-8859-1?Q?eYbLWZP5GwL88nN2Gdvof8uEBlsl3/SOXhLm3R8VWDDZVlS33oYlI8Hegj?=
 =?iso-8859-1?Q?4IDoNeQvxcWIFBZ+5VZX/htXyg331xHNFyR2i/DcB4iUlkDykNVmufiFG2?=
 =?iso-8859-1?Q?IMSgxrd0Dx2y592a1iTKFBEfqOA6shJKF80spZlhhnI/e7cs+OptcCv6IA?=
 =?iso-8859-1?Q?N79YGEMGdnaQW4mO6XT20KKhi0odEMHTbQsA9uEObB7l1xZQZeKrFFXWGv?=
 =?iso-8859-1?Q?Tb1+DfoTGw1gysj4Sot7TlI9N/ql5DLIi607TCikekg4Ezydhs1qUJRn18?=
 =?iso-8859-1?Q?ML+RCgQZGEMD/eL5qxoyTT4E3SpdHSqJFW3K+jTgOx5xjHghiC/jMgs/I6?=
 =?iso-8859-1?Q?GGdXNJRRUA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ZWzt2Xalcz9zaFHXG/pb8o9boWNR7Gqckxfi4ZgYJIfjxCKMmsomCv1dkxCfGzVyFMGwUfiMJRIGVP1xc7nk4feE1oLizjXSpCVTF+9ECH0LGNKEtP/bgdDgDf5OGKYqsNNMs2alw/gwW3VDXQV32eiw9gqurVsl14t5vef/Gz/LrYGHq4X0OtYh8De5WWVnSADN8Ib6ChR2q01Tr8i4kz0sKO4pxAMiLxHXiS3tKUb5rdOceVeQ2RMWuv0/xqvvxzvCxQfteJ2uMUaEAinclLU8h+oXoN39/XmWCjEi6BIDeNX+CnxaNLxpYH/2oCrB6dQKMPxhuj4ACpqkDMhI7A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79b8855b-3a13-4ee5-12ce-08dea128924a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2026 11:07:55.8056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hrlHCV9xnb/dkWs4u4pcQCoszBfo7Z5GR9elM1qE2Ba/5CPsUDo10XqUnJxGyYuq9/LG+leY8jQJVHNQAkC44w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6561
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MAILSPIKE_FAIL(0.00)[131.252.210.177:query timed out];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 37DFC45117A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, April 23, 2026 4:22 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Subject: Re: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
>=20
> On Thu, Apr 23, 2026 at 04:55:55AM +0000, Manna, Animesh wrote:
> >
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Friday, April 17, 2026 3:57 PM
> > > To: Manna, Animesh <animesh.manna@intel.com>
> > > Cc: Nikula, Jani <jani.nikula@intel.com>;
> > > intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org;
> > > Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan
> Subrahmanian
> > > <dibin.moolakadan.subrahmanian@intel.com>
> > > Subject: Re: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
> > >
> > > On Fri, Apr 17, 2026 at 06:03:52AM +0000, Manna, Animesh wrote:
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Nikula, Jani <jani.nikula@intel.com>
> > > > > Sent: Tuesday, April 14, 2026 7:03 PM
> > > > > To: Manna, Animesh <animesh.manna@intel.com>; intel-
> > > > > gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > > > Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan
> > > > > Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>;
> Manna,
> > > > > Animesh <animesh.manna@intel.com>
> > > > > Subject: Re: [PATCH v4 03/13] drm/i915/cmtg: Set timings for
> > > > > CMTG
> > > > >
> > > > > On Sun, 12 Apr 2026, Animesh Manna <animesh.manna@intel.com>
> > > wrote:
> > > > > > Timing registers are separate for CMTG, read transcoder
> > > > > > register and program cmtg transcoder with those values.
> > > > > >
> > > > > > v2:
> > > > > > - Use sw state instead of reading directly from hardware.
> > > > > > [Jani]
> > > > > > - Move set_timing later after encoder enable. [Dibin]
> > > > > >
> > > > > > v3:
> > > > > > - Replace id with trans. [Jani]
> > > > > > - Program cmtg set_timing() along with primary transcoder timin=
g.
> > > > > >
> > > > > > v4:
> > > > > > - Use _MMIO_TRANS() for cmtg registers instead of direct
> > > > > > multiplication. [Jani]
> > > > > >
> > > > > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_cmtg.c     | 61
> > > ++++++++++++++++++-
> > > > > >  drivers/gpu/drm/i915/display/intel_cmtg.h     |  3 +
> > > > > >  .../gpu/drm/i915/display/intel_cmtg_regs.h    | 31 ++++++++++
> > > > > >  drivers/gpu/drm/i915/display/intel_display.c  |  4 ++
> > > > > >  4 files changed, 98 insertions(+), 1 deletion(-)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > > > index 403f9e10a8dc..a3db1368bd83 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > > > @@ -4,7 +4,6 @@
> > > > > >   */
> > > > > >
> > > > > >  #include <linux/string_choices.h> -#include <linux/types.h>
> > > > > >
> > > > > >  #include <drm/drm_device.h>
> > > > > >  #include <drm/drm_print.h>
> > > > > > @@ -222,3 +221,63 @@ void intel_cmtg_set_clk_select(const
> > > > > > struct
> > > > > intel_crtc_state *crtc_state)
> > > > > >  	if (clk_sel_set)
> > > > > >  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> > > > > clk_sel_set);  }
> > > > > > +
> > > > > > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > > > > > +*crtc_state, bool lrr) {
> > > > > > +	struct intel_display *display =3D to_intel_display(crtc_state=
);
> > > > > > +	enum transcoder cpu_transcoder =3D crtc_state-
> >cpu_transcoder;
> > > > > > +	const struct drm_display_mode *adjusted_mode =3D
> &crtc_state-
> > > > > >hw.adjusted_mode;
> > > > > > +	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start,
> > > > > > +crtc_vblank_end;
> > > > > > +
> > > > > > +	if (!intel_cmtg_is_allowed(crtc_state))
> > > > > > +		return;
> > > > > > +
> > > > > > +	crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
> > > > > > +
> > > > > > +	/*
> > > > > > +	 * For platforms that always use VRR Timing Generator, the
> > > > > VTOTAL.Vtotal
> > > > > > +	 * bits are not required. Since the support for these bits is
> going to
> > > > > > +	 * be deprecated in upcoming platforms, avoid writing these
> > > > > > +bits for
> > > > > the
> > > > > > +	 * platforms that do not use legacy Timing Generator.
> > > > > > +	 */
> > > > > > +	crtc_vtotal =3D 1;
> > > > > > +
> > > > > > +	/*
> > > > > > +	 * VBLANK_START not used by hw, just clear it
> > > > > > +	 * to make it stand out in register dumps.
> > > > > > +	 */
> > > > > > +	crtc_vblank_start =3D 1;
> > > > > > +
> > > > > > +	crtc_vblank_end =3D adjusted_mode->crtc_vblank_end;
> > > > > > +
> > > > > > +	if (lrr) {
> > > > > > +		intel_de_write(display,
> > > > > TRANS_VTOTAL_CMTG(cpu_transcoder),
> > > > > > +			       VACTIVE(crtc_vdisplay - 1) |
> > > > > > +			       VTOTAL(crtc_vtotal - 1));
> > > > > > +		intel_de_write(display,
> > > > > TRANS_VBLANK_CMTG(cpu_transcoder),
> > > > > > +			       VBLANK_START(crtc_vblank_start - 1) |
> > > > > > +			       VBLANK_END(crtc_vblank_end - 1));
> > > > > > +		return;
> > > > > > +	}
> > > > > > +
> > > > > > +	intel_de_write(display,
> TRANS_HTOTAL_CMTG(cpu_transcoder),
> > > > > > +		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
> > > > > > +		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> > > > > > +	intel_de_write(display,
> TRANS_HBLANK_CMTG(cpu_transcoder),
> > > > > > +		       HBLANK_START(adjusted_mode-
> >crtc_hblank_start - 1) |
> > > > > > +		       HBLANK_END(adjusted_mode->crtc_hblank_end
> - 1));
> > > > > > +	intel_de_write(display,
> TRANS_HSYNC_CMTG(cpu_transcoder),
> > > > > > +		       HSYNC_START(adjusted_mode->crtc_hsync_start
> - 1) |
> > > > > > +		       HSYNC_END(adjusted_mode->crtc_hsync_end -
> 1));
> > > > > > +	intel_de_write(display,
> TRANS_VTOTAL_CMTG(cpu_transcoder),
> > > > > > +		       VACTIVE(crtc_vdisplay - 1) |
> > > > > > +		       VTOTAL(crtc_vtotal - 1));
> > > > > > +	intel_de_write(display,
> TRANS_VBLANK_CMTG(cpu_transcoder),
> > > > > > +		       VBLANK_START(crtc_vblank_start - 1) |
> > > > > > +		       VBLANK_END(crtc_vblank_end - 1));
> > > > > > +	intel_de_write(display,
> TRANS_VSYNC_CMTG(cpu_transcoder),
> > > > > > +		       VSYNC_START(adjusted_mode->crtc_vsync_start -
> 1) |
> > > > > > +		       VSYNC_END(adjusted_mode->crtc_vsync_end -
> 1));
> > > > > > +	intel_de_write(display,
> > > > > TRANS_SET_CTX_LATENCY_CMTG(cpu_transcoder),
> > > > > > +		       crtc_state->set_context_latency); }
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > > > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > > > index 660ec513626e..53a44f505dd2 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > > > @@ -6,9 +6,12 @@
> > > > > >  #ifndef __INTEL_CMTG_H__
> > > > > >  #define __INTEL_CMTG_H__
> > > > > >
> > > > > > +#include <linux/types.h>
> > > > > > +
> > > > > >  struct intel_display;
> > > > > >  struct intel_crtc_state;
> > > > > >
> > > > > > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > > > > > +*crtc_state, bool lrr);
> > > > > >  void intel_cmtg_set_clk_select(const struct intel_crtc_state
> > > > > > *crtc_state);  void intel_cmtg_sanitize(struct intel_display
> > > > > > *display);  bool intel_cmtg_is_allowed(const struct
> > > > > > intel_crtc_state *crtc_state); diff --git
> > > > > > a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > > > b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > > > index 4a80b88d88fd..f7fc812d8ef0 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > > > @@ -20,4 +20,35 @@
> > > > > >  #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
> > > > > >  #define  CMTG_ENABLE			REG_BIT(31)
> > > > > >
> > > > > > +#define _TRANS_HTOTAL_CMTG_A		0x6F000
> > > > > > +#define _TRANS_HTOTAL_CMTG_B		0x6F100
> > > > > > +#define TRANS_HTOTAL_CMTG(trans)
> 	_MMIO_TRANS((trans), \
> > > > > > +
> _TRANS_HTOTAL_CMTG_A,
> > > > > _TRANS_HTOTAL_CMTG_B)
> > > > > > +#define _TRANS_HBLANK_CMTG_A		0x6F004
> > > > > > +#define _TRANS_HBLANK_CMTG_B		0x6F104
> > > > > > +#define TRANS_HBLANK_CMTG(trans)
> 	_MMIO_TRANS((trans), \
> > > > > > +
> _TRANS_HBLANK_CMTG_A,
> > > > > _TRANS_HBLANK_CMTG_B)
> > > > > > +#define _TRANS_HSYNC_CMTG_A		0x6F008
> > > > > > +#define _TRANS_HSYNC_CMTG_B		0x6F108
> > > > > > +#define TRANS_HSYNC_CMTG(trans)
> > > > > 	_MMIO_TRANS((trans), \
> > > > > > +
> _TRANS_HSYNC_CMTG_A,
> > > > > _TRANS_HSYNC_CMTG_B)
> > > > > > +#define _TRANS_VTOTAL_CMTG_A		0x6F00C
> > > > > > +#define _TRANS_VTOTAL_CMTG_B		0x6F10C
> > > > > > +#define TRANS_VTOTAL_CMTG(trans)
> 	_MMIO_TRANS((trans), \
> > > > > > +
> _TRANS_VTOTAL_CMTG_A,
> > > > > _TRANS_VTOTAL_CMTG_B)
> > > > > > +#define _TRANS_VBLANK_CMTG_A		0x6F010
> > > > > > +#define _TRANS_VBLANK_CMTG_B		0x6F110
> > > > > > +#define TRANS_VBLANK_CMTG(trans)
> 	_MMIO_TRANS((trans), \
> > > > > > +
> _TRANS_VBLANK_CMTG_A,
> > > > > _TRANS_VBLANK_CMTG_B)
> > > > > > +#define _TRANS_VSYNC_CMTG_A		0x6F014
> > > > > > +#define _TRANS_VSYNC_CMTG_B		0x6F114
> > > > > > +#define TRANS_VSYNC_CMTG(trans)
> > > > > 	_MMIO_TRANS((trans), \
> > > > > > +
> _TRANS_VSYNC_CMTG_A,
> > > > > _TRANS_VSYNC_CMTG_B)
> > > > >
> > > > > I though there was already feedback that these match the regular
> > > > > transcoder registers.
> > > >
> > > > _TRANS_HTOTAL_A         0x60000
> > > > _TRANS_HTOTAL_B         0x61000
> > > >
> > > > _TRANS_HTOTAL_CMTG_A            0x6F000
> > > > _TRANS_HTOTAL_CMTG_B            0x6F100
> > > >
> > > > I am not clear how to match?
> > >
> > > #define TRANSCODER_CMTG0_OFFSET 0x6F000 #define
> > > TRANSCODER_CMTG1_OFFSET 0x6F100
> >
> > Ok, just to double check my understanding, I am putting below all the
> changes which maybe you are suggesting.
> > Can please confirm or if I am missing something please let me know.
> >
> > Step1: Define offset macro.
> > #define TRANSCODER_CMTGA_OFFSET 0x6F000 #define
> > TRANSCODER_CMTGB_OFFSET 0x6F100
>=20
> s/AB/01/ to actually match the spec.

Ok.

>=20
> > Step2: Add trans_cmtg_offset array in intel_display_device_info structu=
re
> and initialize.
> > .trans_cmtg_offsets =3D {                                              =
        \
> >                 [TRANSCODER_A] =3D TRANSCODER_CMTGA_OFFSET,
> \
> >                 [TRANSCODER_B] =3D TRANSCODER_CMTGB_OFFSET, },
>=20
> They are just transcoders, so they go into .trans_offsets.
> If there are any pipe register that are actually transcoder registers the=
n we
> may also need a sort of fake .pipe_offsets (like we have for the EDP
> transcoder)

Only CMTG transcoder is not enough, cmtg transcoder will be enabled along w=
ith normal transcoder.
Normal transcoder will use .trans_offsets and cmtg transcoder need separate=
 structure .trans_cmtg_offsets for storing offset. So added separately.

>=20
> > Step3: Define INTEL_DISPLAY_DEVICE_TRANS_CMTG_OFFSET which will use
> > trans_cmtg_offset #define
> INTEL_DISPLAY_DEVICE_TRANS_CMTG_OFFSET(display, trans) \
> >         (DISPLAY_INFO((display))->trans_cmtg_offsets[(trans)] - \
> >          DISPLAY_INFO((display))->trans_offsets[TRANSCODER_A] + \
> >          DISPLAY_MMIO_BASE((display)))
> >
> > Step4: Define _MMIO_TRANS2_CMTG which will use
> INTEL_DISPLAY_DEVICE_TRANS_CMTG_OFFSET
> > #define _MMIO_TRANS2_CMTG(display, trans, reg)
> _MMIO(INTEL_DISPLAY_DEVICE_TRANS_CMTG_OFFSET((display), (trans)) +
> (reg))
> >
> > Step5: Define TRANS_HTOTAL_CMTG
> > #define TRANS_HTOTAL_CMTG(display, trans)
> 	_MMIO_TRANS2_CMTG(display, (trans), _TRANS_HTOTAL_A)
> > #define TRANS_HBLANK_CMTG(display, trans)
> _MMIO_TRANS2_CMTG(display, (trans), _TRANS_HBLANK_A)
>=20
> No, you just use TRANS_HTOTAL() and co.
>=20
> Or at least that's my current thinking. Avoids all the duplicated stuff.

Same like above - Only CMTG transcoder is not enough, cmtg transcoder will =
be enabled along with normal transcoder.
So, we need both TRANS_HTOTAL() and TRANS_HTOTAL_CMTG().
Please let me know for any additional details and the above change still ne=
eded or not. Because only NVL will be supporting CMTG.

Regards,
Animesh
>=20
> --
> Ville Syrj=E4l=E4
> Intel
