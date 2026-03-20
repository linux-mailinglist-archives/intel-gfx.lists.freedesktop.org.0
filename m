Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGOZLAHGvGkY2wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 04:58:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6465E2D5A95
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 04:58:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D09B110E881;
	Fri, 20 Mar 2026 03:58:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="WjSqGQgh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010001.outbound.protection.outlook.com
 [40.93.198.1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A004010E86C;
 Fri, 20 Mar 2026 03:58:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hgb4hx5j9B5EZXO4j1kpDpCrPz7r9wuFUIEaWt4u6yArC+HXMbjnC+fawt/P8jKQmqSZbBHpcR5kXy2IrHDQw+tti1s3nghMMy0PQpYAyHwha7CCaYWNH/9dUi5Px91ZbTovK9QfewfFYYtOsNhiANh7cLvsnAG1VHJMJjU1k8zoGvyQbS/0/BYlOS6GfuGEWwATH3GLevHY8HB6+xClmeaQ7vUmz5kYpXy77qEcp4hxnwjORRJkPvzNwwHhKiy5W/Mx9YArn4yo3jPUkOsv5dVJGe4i6ZgHNBS86GVYcEbR1yPImYbDVenhwBesD6r4/v9ZzIhuL3bMzz2O3qGHOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3tlLblkfYgEkE1wLy7+yWutLX3Jkp+j2N6yUcXaBwlg=;
 b=DJxx57HSxi9TQ4wcZyCbeXNLpdB3jXEMpTGRD1A7C/91Il67ZlGFs2tf31pQRUUCmPlSSXPTqgEnQZW0dQuE0U73rSn78UUcF5iDhs6m3GqZRrUacWoHCy5HzG2iYUbHNSV4y6ZuhQesthfHTv3k4QRbOTPq5QuBSI6jSrWD1TKrvrDrv7jG9gS10hx5gnBeSD3V69mdgfcejiJkfVLKYS0TO9LtzSIQHGva54nZUqZcU84gpGtSaRnsgkhkdIa/JCVvBOSS0c+AO+/6M37x5cfSSCOev5hT6geSA8J65hkta2J9DTyXR8kLsfQi6vA0WZj/pCS87jOiJNq3C1adVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3tlLblkfYgEkE1wLy7+yWutLX3Jkp+j2N6yUcXaBwlg=;
 b=WjSqGQghzjlLLgyA98Bz6Syfb3KMudifW4ThpGT2u2ytVA5OwWUgPhkyN2crt57ow18r9ffsbaZWoZQoh1Rp4geV2YnRTjrS8VNPMJSPJX7OP4wdw788zzTvxF9mduWBg3s9YnVs/Ce6pP+++xfIbMZ7zOtKANImY+zNx9haRl8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from DM4PR12MB8476.namprd12.prod.outlook.com (2603:10b6:8:17e::15)
 by IA1PR12MB6436.namprd12.prod.outlook.com (2603:10b6:208:3ac::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.12; Fri, 20 Mar
 2026 03:58:48 +0000
Received: from DM4PR12MB8476.namprd12.prod.outlook.com
 ([fe80::2d79:122f:c62b:1cd8]) by DM4PR12MB8476.namprd12.prod.outlook.com
 ([fe80::2d79:122f:c62b:1cd8%6]) with mapi id 15.20.9745.007; Fri, 20 Mar 2026
 03:58:48 +0000
Message-ID: <7476bdd2-be51-4444-b0ac-bbc1d3225d4e@amd.com>
Date: Thu, 19 Mar 2026 21:58:43 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/amd/display: Rename enum 'pixel_format' to
 'dc_pixel_format'
To: Hou Wenlong <houwenlong.hwl@antgroup.com>, linux-kernel@vger.kernel.org
Cc: Alex Deucher <alexander.deucher@amd.com>, Alvin Lee <alvin.lee2@amd.com>, 
 amd-gfx@lists.freedesktop.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Aurabindo Pillai <aurabindo.pillai@amd.com>, Ausef Yousof
 <auyousof@amd.com>, Bhuvanachandra Pinninti <bpinnint@amd.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Charlene Liu <charlene.liu@amd.com>, Chenyu Chen <chen-yu.chen@amd.com>,
 Chris Park <chris.park@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>,
 Dillon Varone <dillon.varone@amd.com>,
 Dmytro Laktyushkin <dmytro.laktyushkin@amd.com>,
 dri-devel@lists.freedesktop.org, Gustavo Sousa <gustavo.sousa@intel.com>,
 Harold Sun <Harold.Sun@amd.com>, Harry Wentland <harry.wentland@amd.com>,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Jun Lei
 <jun.lei@amd.com>, Karthi Kandasamy <karthi.kandasamy@amd.com>,
 Leo Chen <leo.chen@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Lohita Mudimela <lohita.mudimela@amd.com>,
 Lucas De Marchi <demarchi@kernel.org>,
 Meenakshikumar Somasundaram <meenakshikumar.somasundaram@amd.com>,
 Nicholas Carbones <Nicholas.Carbones@amd.com>, Ray Wu <ray.wu@amd.com>,
 Relja Vojvodic <rvojvodi@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ryan Seto <ryanseto@amd.com>,
 Samson Tam <Samson.Tam@amd.com>, Simona Vetter <simona@ffwll.ch>,
 =?UTF-8?Q?Timur_Krist=C3=B3f?= <timur.kristof@gmail.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Wayne Lin <wayne.lin@amd.com>,
 Wenjing Liu <wenjing.liu@amd.com>, Yan Li <yan.li@amd.com>,
 Zhenyu Wang <zhenyuw.linux@gmail.com>, Zhi Wang <zhi.wang.linux@gmail.com>
References: <cover.1773629419.git.houwenlong.hwl@antgroup.com>
 <d3b123a7d3192947e2eb4c33cd10cbaa8c79dfc1.1773629419.git.houwenlong.hwl@antgroup.com>
Content-Language: en-US
From: Alex Hung <alex.hung@amd.com>
In-Reply-To: <d3b123a7d3192947e2eb4c33cd10cbaa8c79dfc1.1773629419.git.houwenlong.hwl@antgroup.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0305.namprd04.prod.outlook.com
 (2603:10b6:303:82::10) To DM4PR12MB8476.namprd12.prod.outlook.com
 (2603:10b6:8:17e::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR12MB8476:EE_|IA1PR12MB6436:EE_
X-MS-Office365-Filtering-Correlation-Id: fc3cfceb-3137-4af3-61f0-08de8634fd24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|22082099003|56012099003|18002099003|7053199007;
X-Microsoft-Antispam-Message-Info: OxteHf3qfv5BcWEMVSvmzj0FIgEsqfEuxH/hoNXVlFoT0uXk3E9tp258cdS5TI9DM8EHJl5APToSmU+/ucwZvFJdtRrbJU74MGVuNBRo/CN9G7m1YviMSpks0i2ixdhFzQT2nyZmML8jeOWA/B13sAgluSDgV9NCwcP4Kq2NyE2YNPkCzxEFaGlBiPISjW2QYhMihOAY4eXElpY9NeyZi8hlJeLvR6mbWRfdqOyaUJSejOG5BWuJ4BK9fT/h6hF9hkSXquQDowB3S6lC/KEh/qaiMp/5QpVzxb9yLXYlMNHGpwmmoZUJoIYaHW8ImmyLzK8uCKeVjTMPkC2XvQdHgxz2H8M8Z1R/PBpPUM3Vn3YySoemCgiXRAuWRMbA95KCR1UXv29GD0KG+4X6M7qXbPP0+kuy9OLDfh6gZ/WmYpPu2rb1YRBM91twpu35fpFgM651q0X2PlKFgsuTaOVwvOFj8QvXqRNPlDPwKndcM8O6czvAsdOWGFWeILMewSUUnUmcdW8Sbx7MN5atI9Cjs8SRHp6rxlpXwaThA6oNI1gHI0zslwJTEMYvmrxZ/ueQV9yEYRWUUV5wFIn/Ubn8OBxhN4J7vsvAXuxJmfkTV7SWFAkF/CCH8f0w7KxvVn/70gRTu1t1Uwgl/bcc9yEbzCi8jpuvxYtxnUf1tZZMVm5qukzPbGljm8YuHKYV9vuyZM3HtwzctLdTNaw5ZbC6NbArMy33YhZLvV3IwWGXDDQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR12MB8476.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(22082099003)(56012099003)(18002099003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L2U0REtIYm5ES3JRbW9rK0E2NG4xMzNZM1BoMFdMRGEyVjlhRFZ1cUh4TCsw?=
 =?utf-8?B?eWhQZmdQNWdjNUpKSVBLV1hQd0pzMy80VjYvM0N2Sk9IVml0OXBla05oK21p?=
 =?utf-8?B?L3A1UVBReVo1dm45aEY3Y3dib1BqR3dsVmJoVlFtd2xBU0xUbUVYd002OTFz?=
 =?utf-8?B?dW5aMkpIQ2VhUkMwcWFwT2pYeGQxV2VNN1A0U0x0MVNOZi8wdDNRUGdZbDBv?=
 =?utf-8?B?OGE5dCtwNkpVTDRYSHZ3NVBINDY0QmhJbWVabnpJK0RPYkprT3pjWTdoNnJM?=
 =?utf-8?B?ZkRXWHhleWRmL0VoY3h6bjArNzM0TUNnbS9wYVhTQm81SnNMVUhlMnpadk55?=
 =?utf-8?B?VlUrUFNOZUlpaHZ5QmNSTVhGSC9HWEYxYUN2Z0FKR2swTXF4Z3ovYXYxQVh2?=
 =?utf-8?B?WWhQVnJjdUgzcFhQNjU2WW5SWFkwRGgrNEdNTmM5M3ExZEEvV2o3TnNnNy9T?=
 =?utf-8?B?Rk5CakY1Z0xJUGJmdkxZdlF3eVk2NnFZMDRFdk5HMlgvU1pvZ1RFbFRSdzY0?=
 =?utf-8?B?aGJYSmRITzJFZzh6azZLZyt5NDN2VE83Zjd6VUQ2dERaSGx2Y2tuZ29UV2Zo?=
 =?utf-8?B?VUtidFpZenZqNVdWc0JIOEVuRzZQaUowekhTOTMyejVpcmpQTHpjKzBLaHNy?=
 =?utf-8?B?S082YVF4ZWZTbUtibTlpcCtJeG56MWo0UlpZTmxVWmUzbm5TNFQranR1SVZ0?=
 =?utf-8?B?V0kyM2FlL0dDNHFGb3dFM29hd2RNbjlRVG5ENXduNmRDK25ueVk3eVNxc3VE?=
 =?utf-8?B?L1lYYzFrZUx6ZWpGUm5TV2E3YkhjbW5PYUFrNjYxb2FWV1A4ZUtDOUJXYnpI?=
 =?utf-8?B?TUdIcVdESUVubjBkTWdKTmp0T1h0cnc1UHpDOUx4Z3NiNlBQUWJJeXV5SndF?=
 =?utf-8?B?bUN4dWdhaHlWZTVxc0dUYU0zMXZ6MnFlcjFjLzN2WEdtaVllZGthNFVsTm1H?=
 =?utf-8?B?bVcrNXE0NHRMY3VUYXZqb0gzbkdlZENtSUp4Wm9TWGoyZlc1STBELzhnd3Y1?=
 =?utf-8?B?V1JvUkRMcUhjVWl3Rzh2RWsrb0x0M2ZPb0QwUVJrdW9yUXo0ajhoNHFyK1NJ?=
 =?utf-8?B?YlJQa0FZVmgzYzBjSVFJZ2FOYkY2QUY5MjF4THY0UGFGMDl3eFhoUG5qSmw2?=
 =?utf-8?B?Rkd2VTZBTlFTNWZWVk1pV0dzdkZRRmo5MEx0eDlxYVZMTVNJUFd0MU1FUVJ4?=
 =?utf-8?B?ZGFlY2RQRVV3WFJrNDNJRlFqRnNJSlk1S0ZqRldsTjBLbnExYzBpMFV5Wk9y?=
 =?utf-8?B?d3MyUFZ6RTZrRHlsR0RabEVwK0J2NVlaZVkvbXhqdkJsV281L293OEFUeDNK?=
 =?utf-8?B?cmJhYndET3NicHBkRS9URFNoV05QRjZkRGVNTnZVOUN0WE5odk8xakNtNmRN?=
 =?utf-8?B?NCsxSXh0Z3RPZ1Y1NzNzeUN6cWdaN3oyTkl0anZJU21Wa2VRS2JEZU12emFF?=
 =?utf-8?B?YUhhZy9ISlRHWSt5RmlydE8vMjZjcTgyRUlaTkdrSEd0bitFQlBNSjVNMVQ1?=
 =?utf-8?B?TjhLTkI4NXF5SEhORXlMaTFNTVRhVmo1NHR6MXMzMllLWUIyUFBEMW5LZzFU?=
 =?utf-8?B?UE1EVUNjZTM0RUlMQWpnZkZON2FGbWF5SFFxTWE2RGcxSW9tZDFHYzQ2QmpM?=
 =?utf-8?B?TFd2YVNtdUpXdWdFNUZURzFNRjF2bmZQM2ZXMUVRZklHV3lUN2FnQXVtZDhJ?=
 =?utf-8?B?VkN5Q2dzdjBSMTZ1aW03SXUrY3FpZUdxVTliTEp1MisrenZlV3B2aE01QlB1?=
 =?utf-8?B?REFFSVUycjN1Z2RzM2c3bFZTSkM4UXByQmJ6eEQ3eThNVFVOeGhCc1U1Lzhq?=
 =?utf-8?B?VERiTWNLSVQxMWk4RC9TVkVzVVhoTC9LNm94Qzl0WkVTM0lDdStOc2J2eXJj?=
 =?utf-8?B?bmczc0dXSmNlem92SXM0Q3ZmcUJ0Sm5JVldIbk9yQ1JaQUJhSlpiN0paRFFN?=
 =?utf-8?B?c0M0NEFVNzlqUHN6aFYvQm4wVHFFbHNNOFM3dElNZUZJVGk5Uk16MDBVWS9M?=
 =?utf-8?B?YzJTTTgwcW93bkdmM1JjVGpOZGZvYnRsYUhuNkpaQitlYVRucDd4b1FDeUx4?=
 =?utf-8?B?Q2daQklrcjVLWjczMG91Y2lWVURnbzcwUlVmeVRxTEswR3AzREhGLzRKSngv?=
 =?utf-8?B?WkdvQUExaGdsNmZqbFRhYm5sNzFCQzVXMG5BTVMvVjZVanNlU24zR2JVYXlz?=
 =?utf-8?B?cEh2QU92K2tQN2xWSkUrRjVIdlZETDFzNmcwR3d5d3VUcjRhMDBQdzBQRitX?=
 =?utf-8?B?SGo2MmpLOHB1WmYxTlpybXRpKzNFSUxXMGFEeTFXZ0lZZ3J6M3FrR1dOWk5D?=
 =?utf-8?Q?XDrCHE6+Kf3GLijj6f?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc3cfceb-3137-4af3-61f0-08de8634fd24
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB8476.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 03:58:47.9055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xVWwqArT4+nz/wAJZcv/jK4BR8u7NyfV5gxT2dfnGEAAbEEMD6Y2nfB/dJpX49kphUuW1AIS7I6slIeRd3nugQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6436
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[46];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,lists.freedesktop.org,intel.com,gmail.com,linux.intel.com,kernel.org,igalia.com,ffwll.ch,ursulin.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	FROM_NEQ_ENVFROM(0.00)[alex.hung@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[amd.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	REDIRECTOR_URL(0.00)[aka.ms];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,aka.ms:url,amd.com:dkim,amd.com:email,amd.com:mid]
X-Rspamd-Queue-Id: 6465E2D5A95
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Reviewed-by: Alex Hung <alex.hung@amd.com>

On 3/15/26 21:46, Hou Wenlong wrote:
> [Some people who received this message don't often get email from houwenlong.hwl@antgroup.com. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
> 
> Rename the enum 'pixel_format' to 'dc_pixel_format' to avoid potential
> name conflicts with the pixel_format struct defined in
> include/video/pixel_format.h.
> 
> Signed-off-by: Hou Wenlong <houwenlong.hwl@antgroup.com>
> ---
>   drivers/gpu/drm/amd/display/dc/core/dc_resource.c           | 4 ++--
>   drivers/gpu/drm/amd/display/dc/dc_hw_types.h                | 2 +-
>   drivers/gpu/drm/amd/display/dc/dc_spl_translate.c           | 3 ++-
>   drivers/gpu/drm/amd/display/dc/dpp/dcn10/dcn10_dpp_dscl.c   | 4 ++--
>   drivers/gpu/drm/amd/display/dc/dpp/dcn401/dcn401_dpp_dscl.c | 4 ++--
>   drivers/gpu/drm/amd/display/dc/inc/hw/hw_shared.h           | 2 +-
>   drivers/gpu/drm/amd/display/dc/inc/hw/transform.h           | 2 +-
>   7 files changed, 11 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/display/dc/core/dc_resource.c b/drivers/gpu/drm/amd/display/dc/core/dc_resource.c
> index 03d125f794b0..cadc52728108 100644
> --- a/drivers/gpu/drm/amd/display/dc/core/dc_resource.c
> +++ b/drivers/gpu/drm/amd/display/dc/core/dc_resource.c
> @@ -742,10 +742,10 @@ struct clock_source *resource_find_used_clk_src_for_sharing(
>          return NULL;
>   }
> 
> -static enum pixel_format convert_pixel_format_to_dalsurface(
> +static enum dc_pixel_format convert_pixel_format_to_dalsurface(
>                  enum surface_pixel_format surface_pixel_format)
>   {
> -       enum pixel_format dal_pixel_format = PIXEL_FORMAT_UNKNOWN;
> +       enum dc_pixel_format dal_pixel_format = PIXEL_FORMAT_UNKNOWN;
> 
>          switch (surface_pixel_format) {
>          case SURFACE_PIXEL_FORMAT_GRPH_PALETA_256_COLORS:
> diff --git a/drivers/gpu/drm/amd/display/dc/dc_hw_types.h b/drivers/gpu/drm/amd/display/dc/dc_hw_types.h
> index cfa569a7bff1..81d12df8f54e 100644
> --- a/drivers/gpu/drm/amd/display/dc/dc_hw_types.h
> +++ b/drivers/gpu/drm/amd/display/dc/dc_hw_types.h
> @@ -218,7 +218,7 @@ enum surface_pixel_format {
> 
> 
>   /* Pixel format */
> -enum pixel_format {
> +enum dc_pixel_format {
>          /*graph*/
>          PIXEL_FORMAT_UNINITIALIZED,
>          PIXEL_FORMAT_INDEX8,
> diff --git a/drivers/gpu/drm/amd/display/dc/dc_spl_translate.c b/drivers/gpu/drm/amd/display/dc/dc_spl_translate.c
> index 37d1a79e8241..854d50ab1a6c 100644
> --- a/drivers/gpu/drm/amd/display/dc/dc_spl_translate.c
> +++ b/drivers/gpu/drm/amd/display/dc/dc_spl_translate.c
> @@ -63,7 +63,8 @@ static void populate_inits_from_splinits(struct scl_inits *inits,
>          inits->h_c = dc_fixpt_from_int_dy(spl_inits->h_filter_init_int_c, spl_inits->h_filter_init_frac_c >> 5, 0, 19);
>          inits->v_c = dc_fixpt_from_int_dy(spl_inits->v_filter_init_int_c, spl_inits->v_filter_init_frac_c >> 5, 0, 19);
>   }
> -static void populate_splformat_from_format(enum spl_pixel_format *spl_pixel_format, const enum pixel_format pixel_format)
> +static void populate_splformat_from_format(enum spl_pixel_format *spl_pixel_format,
> +                                          const enum dc_pixel_format pixel_format)
>   {
>          if (pixel_format < PIXEL_FORMAT_INVALID)
>                  *spl_pixel_format = (enum spl_pixel_format)pixel_format;
> diff --git a/drivers/gpu/drm/amd/display/dc/dpp/dcn10/dcn10_dpp_dscl.c b/drivers/gpu/drm/amd/display/dc/dpp/dcn10/dcn10_dpp_dscl.c
> index 808bca9fb804..0d2c9fcd3362 100644
> --- a/drivers/gpu/drm/amd/display/dc/dpp/dcn10/dcn10_dpp_dscl.c
> +++ b/drivers/gpu/drm/amd/display/dc/dpp/dcn10/dcn10_dpp_dscl.c
> @@ -102,7 +102,7 @@ static int dpp1_dscl_get_pixel_depth_val(enum lb_pixel_depth depth)
>          }
>   }
> 
> -static bool dpp1_dscl_is_video_format(enum pixel_format format)
> +static bool dpp1_dscl_is_video_format(enum dc_pixel_format format)
>   {
>          if (format >= PIXEL_FORMAT_VIDEO_BEGIN
>                          && format <= PIXEL_FORMAT_VIDEO_END)
> @@ -111,7 +111,7 @@ static bool dpp1_dscl_is_video_format(enum pixel_format format)
>                  return false;
>   }
> 
> -static bool dpp1_dscl_is_420_format(enum pixel_format format)
> +static bool dpp1_dscl_is_420_format(enum dc_pixel_format format)
>   {
>          if (format == PIXEL_FORMAT_420BPP8 ||
>                          format == PIXEL_FORMAT_420BPP10)
> diff --git a/drivers/gpu/drm/amd/display/dc/dpp/dcn401/dcn401_dpp_dscl.c b/drivers/gpu/drm/amd/display/dc/dpp/dcn401/dcn401_dpp_dscl.c
> index a62c4733ed3b..e2489eaf0004 100644
> --- a/drivers/gpu/drm/amd/display/dc/dpp/dcn401/dcn401_dpp_dscl.c
> +++ b/drivers/gpu/drm/amd/display/dc/dpp/dcn401/dcn401_dpp_dscl.c
> @@ -94,7 +94,7 @@ static int dpp401_dscl_get_pixel_depth_val(enum lb_pixel_depth depth)
>          }
>   }
> 
> -static bool dpp401_dscl_is_video_format(enum pixel_format format)
> +static bool dpp401_dscl_is_video_format(enum dc_pixel_format format)
>   {
>          if (format >= PIXEL_FORMAT_VIDEO_BEGIN
>                          && format <= PIXEL_FORMAT_VIDEO_END)
> @@ -103,7 +103,7 @@ static bool dpp401_dscl_is_video_format(enum pixel_format format)
>                  return false;
>   }
> 
> -static bool dpp401_dscl_is_420_format(enum pixel_format format)
> +static bool dpp401_dscl_is_420_format(enum dc_pixel_format format)
>   {
>          if (format == PIXEL_FORMAT_420BPP8 ||
>                          format == PIXEL_FORMAT_420BPP10)
> diff --git a/drivers/gpu/drm/amd/display/dc/inc/hw/hw_shared.h b/drivers/gpu/drm/amd/display/dc/inc/hw/hw_shared.h
> index a61d12ec61bc..b4a95807b73b 100644
> --- a/drivers/gpu/drm/amd/display/dc/inc/hw/hw_shared.h
> +++ b/drivers/gpu/drm/amd/display/dc/inc/hw/hw_shared.h
> @@ -240,7 +240,7 @@ struct default_adjustment {
>          enum dc_color_space out_color_space;
>          enum dc_color_space in_color_space;
>          enum dc_color_depth color_depth;
> -       enum pixel_format surface_pixel_format;
> +       enum dc_pixel_format surface_pixel_format;
>          enum graphics_csc_adjust_type csc_adjust_type;
>          bool force_hw_default;
>   };
> diff --git a/drivers/gpu/drm/amd/display/dc/inc/hw/transform.h b/drivers/gpu/drm/amd/display/dc/inc/hw/transform.h
> index 5a1d9b708a9d..30990355985d 100644
> --- a/drivers/gpu/drm/amd/display/dc/inc/hw/transform.h
> +++ b/drivers/gpu/drm/amd/display/dc/inc/hw/transform.h
> @@ -160,7 +160,7 @@ struct scaler_data {
>          struct scaling_ratios ratios;
>          struct scl_inits inits;
>          struct sharpness_adj sharpness;
> -       enum pixel_format format;
> +       enum dc_pixel_format format;
>          struct line_buffer_params lb_params;
>          // Below struct holds the scaler values to program hw registers
>          struct dscl_prog_data dscl_prog_data;
> --
> 2.31.1
> 

