Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eM0GGICU+GnnwgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 14:43:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9664BD18C
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 14:43:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 134C210E68A;
	Mon,  4 May 2026 12:43:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="GwRk+e9C";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WSEFqopo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CE6510E471
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2026 21:30:42 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63UGImDp2122428
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2026 21:30:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 EYg1mHZ78qeUHVxwPW5soi9NfELbaGNPD7XescIFQxE=; b=GwRk+e9C/NctBONv
 CIKu36r0sw9XwAGbMoUqHqk8F3VsXA1Z1IX+hsOk3wgNN/JYTVQvbelDoTs3yzuo
 w8ezTKWH7Cya2BXuC44TAdPlRU8SQmaJcMNXiKYwjOFvyRGDKVQfv7I2qgynfWTY
 r3EApPmP70ekVWgvhzJfgC6bVqHdGWbty3vae3lGMFqfi8tOR8I2JqlQts85BqhM
 8out9exLsmmNUug79lT5bf9BYWkq6CJsA+vrOol8mk12K5q2bS7qoM5EkB+ewhcY
 Vr6TDrt5AHoCmUfADKd0AGe5/EbNQ87zJKvejDFn3FAwN2iZke4/njr9CTXoUrl3
 5870vQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com
 [74.125.82.198])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dvag4sc4n-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2026 21:30:41 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id
 5a478bee46e88-2ddd8ef5343so1448434eec.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2026 14:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1777584641; x=1778189441;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:date:message-id:subject
 :references:in-reply-to:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EYg1mHZ78qeUHVxwPW5soi9NfELbaGNPD7XescIFQxE=;
 b=WSEFqoporXxHCW/yHV6+IY25uYiKY9qEyb4INbuPK/5WJEDixFTCLwyutvztF3VSxc
 SUTyc/5rx7tJ7sMwvReZLwB1sTPr6DdqgBcn2sk90QKiExk6z2eActKy1lGYVTk7Umjf
 jJ2WfBvg8S2yqfSdLvrhC0yL9tjcSnmWy+OO9hGvSHoeiZbhxS+V+nt9v5z+hr+lMbae
 NrZA/wfYm8/95q+//VAQu86ooXim/pXqQFOrUZYeW4vLnd78YwrLLrhXehJDx4B1XAyo
 krpe1cUO2UPNRu7jdB6/nj098dnx/A63l0o3vJuChfXXsCasbEVkM3XiNa3Kx4WslKeg
 fpcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777584641; x=1778189441;
 h=content-transfer-encoding:mime-version:date:message-id:subject
 :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=EYg1mHZ78qeUHVxwPW5soi9NfELbaGNPD7XescIFQxE=;
 b=VxRzIifSr3yVx8T/ur7NCTAQP+hdm9oHXdZ/z7foFsHJUiJta+G152Y1F0k891tv0h
 oWwUgDPqS/usD0QiHm+geQ+DxUXbFT9EH3r4qiNGXtoQJlaT7npI7qgunnzU81Yd7zw9
 Bs3cIYRi3z6VKLhd0zadF60I4TDFdoN1g9V9cemFD2F2Uwr2937FKBItLIJjE3aMKPIS
 BHaWlk1G3pC7mOHjRTec/TOAJWlOLpC7ct7xgTiznKmdsKIwAr4s3z1aGtVF/1dlxm44
 oThL/uQ+nqbJu2lCxQmnGcE1EdeC2Ictl1Sw5Ud3UlIT+5Ap/7+MWQ7TtXMbyFu4nABy
 v/gg==
X-Forwarded-Encrypted: i=1;
 AFNElJ9shZWhj0VkSAv0YK/y+BLeQDAtBtyigU6hwYvoxuAnY4tE5orgA8NGLocg24kCd3fWqqVppVeloZ4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx2QZzWMCIVdCVyEoU2SuPs5b7lAnZkTwYVKEQQDTVZ3Vxq6K9q
 STw3/fWJmBPBd/KMnlQUd5QA8q4jz1T0ALkMdv2/jEBMIgqonr/khYTMI+s1rUIh4HPm6JYFsBk
 JCL3BnIbeBhzU8+sQhL36mNx/B40R99jucfylbLPnKAZv7ZjZIIIAxbS0kEURhyshTLiGQXs=
X-Gm-Gg: AeBDiessXbD3HanBmrh40cuaM8JeBOo5KF0gb90eEwH9M9AKvYM/tQqCyi6Z2lxOBPW
 SaEbpMZfcGYxxY0jiInkl6xbcHT1lo5HkOUhTNyxWTKszmenyaTwxfHjRBDUV38OGoeSdtKa7Nw
 MiaKo91gobHfFPVfxdgjhpGJCjdqTV2wr/rJgFqlR82uDYqL3rDiYcUHZ1DUHty5OqYxtdLl5Gw
 A6g7YQ8/QBqWF364DFsXyZoN2joRIlc39t8tUYSQua81kqPTA157/ZFWL8FyscEvvJB7+1l8yie
 n6noANQnzjdqQbinKYuh1rqeHLChl3E3UlJhopAJ4iFMXUNXPgojF51m1as3BWPsXHuATObKvef
 eEySZNzrQkknCMWmk9pk+eWtgU3FQxJkuZYZwxi43boMOs7WtwzNXOLD3cdqCzwVBSpSGJ8i4PB
 gZZSMK9tpODj8=
X-Received: by 2002:a05:7300:e402:b0:2dd:6937:79d5 with SMTP id
 5a478bee46e88-2ed3d5c6b8fmr2496710eec.8.1777584641141; 
 Thu, 30 Apr 2026 14:30:41 -0700 (PDT)
X-Received: by 2002:a05:7300:e402:b0:2dd:6937:79d5 with SMTP id
 5a478bee46e88-2ed3d5c6b8fmr2496677eec.8.1777584640462; 
 Thu, 30 Apr 2026 14:30:40 -0700 (PDT)
Received: from hu-jjohnson-lv.qualcomm.com (Global_NAT1.qualcomm.com.
 [129.46.96.20]) by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2ee38d79eb9sm2504861eec.8.2026.04.30.14.30.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2026 14:30:39 -0700 (PDT)
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
To: tj@kernel.org, tony.luck@intel.com, jani.nikula@linux.intel.com,
 ap420073@gmail.com, jv@jvosburgh.net, freude@linux.ibm.com,
 bcrl@kvack.org, trondmy@kernel.org, longman@redhat.com,
 kees@kernel.org, pengdonglin <dolinux.peng@gmail.com>
Cc: bigeasy@linutronix.de, hdanton@sina.com, paulmck@kernel.org,
 linux-kernel@vger.kernel.org, linux-rt-devel@lists.linux.dev,
 linux-nfs@vger.kernel.org, linux-aio@kvack.org,
 linux-fsdevel@vger.kernel.org, linux-security-module@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-s390@vger.kernel.org, cgroups@vger.kernel.org
In-Reply-To: <20250916044735.2316171-1-dolinux.peng@gmail.com>
References: <20250916044735.2316171-1-dolinux.peng@gmail.com>
Subject: Re: (subset) [PATCH v3 00/14] Remove redundant
 rcu_read_lock/unlock() in spin_lock
Message-Id: <177758463946.1848985.4916088351427792183.b4-ty@oss.qualcomm.com>
Date: Thu, 30 Apr 2026 14:30:39 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: hnFk4VRwLI4MkUTT86gsL-EErjFpMtR5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDMwMDIyMiBTYWx0ZWRfX6dXNjQRBAxlg
 ReQ/pqYIZHeF0WLFB2RFt2KgGbmUGnr0XTCC7SJxEUCm+xDxAJ0P51q6k4eLybnX2zrVcFUQVLZ
 I4lIIsICSP7kvIJQAapLaArNSBCZW18/W1CH3Mt+wOb4ekFROk/YZA7H5cc5PTjiQttmxJB4ht0
 ggEZMjPQy7XkGst9QNFpOVp2XYgWvalbY7u/urP9SfzBrXuB2/5seBHJDhX8QgLynTiBpXF+D/w
 Va1OK131wiazWiVOv2dinArlawS51Q7/nbXLyy6PeOORlNYwUO0V49RXG/uU/T//bHidDJANKDf
 9EPFXtEuAExQP+tNgWYZvcXRtlynKZj0o2vh+65n68WC7Guw6rALXYKPknWagBMeVurDQ0uqkS+
 XUx4IRCyeUnnHdd4581AET7elrUVYdXeswSpFjlr/oW5C/1X3n/I6eF4eptV/5wVhzrqlzt7UsN
 fLJeemqLCA15Z7uV3BA==
X-Authority-Analysis: v=2.4 cv=UcxhjqSN c=1 sm=1 tr=0 ts=69f3ca01 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=R8he2_Gm4Sd0DFq6ycoA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: hnFk4VRwLI4MkUTT86gsL-EErjFpMtR5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-30_06,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 clxscore=1011 lowpriorityscore=0 malwarescore=0
 impostorscore=0 adultscore=0 spamscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604300222
X-Mailman-Approved-At: Mon, 04 May 2026 12:43:41 +0000
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
X-Rspamd-Queue-Id: AE9664BD18C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[87];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:tj@kernel.org,m:tony.luck@intel.com,m:jani.nikula@linux.intel.com,m:ap420073@gmail.com,m:jv@jvosburgh.net,m:freude@linux.ibm.com,m:bcrl@kvack.org,m:trondmy@kernel.org,m:longman@redhat.com,m:kees@kernel.org,m:dolinux.peng@gmail.com,m:bigeasy@linutronix.de,m:hdanton@sina.com,m:paulmck@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rt-devel@lists.linux.dev,m:linux-nfs@vger.kernel.org,m:linux-aio@kvack.org,m:linux-fsdevel@vger.kernel.org,m:linux-security-module@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-acpi@vger.kernel.org,m:linux-s390@vger.kernel.org,m:cgroups@vger.kernel.org,m:dolinuxpeng@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,linux.intel.com,gmail.com,jvosburgh.net,linux.ibm.com,kvack.org,redhat.com];
	FORGED_SENDER(0.00)[jeff.johnson@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[linutronix.de,sina.com,kernel.org,vger.kernel.org,lists.linux.dev,kvack.org,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jeff.johnson@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]


On Tue, 16 Sep 2025 12:47:21 +0800, pengdonglin wrote:
> Since commit a8bb74acd8efe ("rcu: Consolidate RCU-sched update-side function definitions")
> there is no difference between rcu_read_lock(), rcu_read_lock_bh() and
> rcu_read_lock_sched() in terms of RCU read section and the relevant grace
> period. That means that spin_lock(), which implies rcu_read_lock_sched(),
> also implies rcu_read_lock().
> 
> There is no need no explicitly start a RCU read section if one has already
> been started implicitly by spin_lock().
> 
> [...]

Applied, thanks!

[14/14] wifi: ath9k: Remove redundant rcu_read_lock/unlock() in spin_lock
        commit: c4f518736472c8cfbf1d304e01c631babd2bbf34

Best regards,
-- 
Jeff Johnson <jeff.johnson@oss.qualcomm.com>

