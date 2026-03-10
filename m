Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCsbIgOVsWnkDAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 17:14:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E80E326725F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 17:14:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28D9210E3D8;
	Wed, 11 Mar 2026 16:14:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (4096-bit key; unprotected) header.d=crudebyte.com header.i=@crudebyte.com header.b="dTpIUmFy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from kylie.crudebyte.com (kylie.crudebyte.com [5.189.157.229])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 051EC10E158
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2026 14:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=aVv/PSZT5NGeZjfHxwg8OpWgNHlsgZDJ/5CMzeiUbdo=; b=dTpIUmFyfV+bP6Hy0ueZpN32tu
 piiOrm2xYxIB724JO1nPYEvLrwNppM7ldi2VsLNiB9a22ZPzaNJQ0YaGHJwVuraOF2yk5SpAHZold
 s8t7GSMCpZMXoj2MN+HCYF9oJcPgVF+TLl3oulmGF4t7YrhkwJ3IfsTmzXldUh96w/myd3pDSVX1g
 /e8bzPXWMBYBNoEloTPI5IYSewDyrYj60Js0etFfclp4hEgkn7HaHPBIdN5mmqp8OC3Z4JyMZY1In
 us3k02cy2EDC8Yr2DD9TZj2Bfv2JCzi8o1CBU/q/X+4deOd5/tymAnt0Bem3HGOfb0TZNQXc+sRV/
 1upKIM10UX7QbQ98BeJxn1cHAUt80a13aLlrns2kgX3r4ZD43IvQ3qOgYizweNeHFZvB+bpwBSNFD
 hlDW1qIdKmIN+wC7qSL6cU7m+YgH+eIF1AeR8pLLvTFBNqmI6qti9D+O96RBcbYAwE/olpfjlTGn5
 mdLSL9FFfI7mx4Sepl5WAdeD1XVerb2KTcAMA8AXYimzng7DssEnPDbX6u+t3yAcQjc1BrWIujZyx
 Gao2D20IgKGUx784nxNUpYJ2ZiCkXzoDKyugnEIdTC+VrOwC2OEJanP1Uq3/BrGj0qOrmxYFeI51c
 48zjYWWU3v40e6itkF189TkI8Acs6/RLaheNlL7MM=;
From: Christian Schoenebeck <linux_oss@crudebyte.com>
To: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com,
 bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr,
 dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org,
 gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev, kvm@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-block@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, linux-btrfs@vger.kernel.org,
 linux-cifs@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, linux-ext4@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-input@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-media@vger.kernel.org, linux-mips@vger.kernel.org, linux-mm@kvack.org,
 linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
 linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 ntfs3@lists.linux.dev, samba-technical@lists.samba.org,
 sched-ext@lists.linux.dev, target-devel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev,
 Philipp Hahn <phahn-oss@avm.de>, Philipp Hahn <phahn-oss@avm.de>
Cc: Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Subject: Re: [PATCH 24/61] net/9p: Prefer IS_ERR_OR_NULL over manual NULL check
Date: Tue, 10 Mar 2026 14:47:03 +0100
Message-ID: <1948861.tdWV9SEqCh@weasel>
In-Reply-To: <20260310-b4-is_err_or_null-v1-24-bd63b656022d@avm.de>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <20260310-b4-is_err_or_null-v1-24-bd63b656022d@avm.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
X-Mailman-Approved-At: Wed, 11 Mar 2026 16:14:45 +0000
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
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[26];
	DMARC_POLICY_ALLOW(-0.50)[crudebyte.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	CTE_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[crudebyte.com:s=kylie];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[linux_oss@crudebyte.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:amd-gfx@lists.freedesktop.org,m:apparmor@lists.ubuntu.com,m:bpf@vger.kernel.org,m:ceph-devel@vger.kernel.org,m:cocci@inria.fr,m:dm-devel@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:gfs2@lists.linux.dev,m:intel-wired-lan@lists.osuosl.org,m:iommu@lists.linux.dev,m:kvm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-block@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-btrfs@vger.kernel.org,m:linux-cifs@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-erofs@lists.ozlabs.org,m:linux-ext4@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-hyperv@vger.kernel.org,m:linux-input@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-leds@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-mips@vger.kernel.org,m:linux-mm@kvack.org,m:linux-modules@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:linux-nfs@vger.kernel.org,m:linux-omap@vger.kernel.org,m:linux-phy@lists.infradead.org,m:linux-pm@vger
 .kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-scsi@vger.kernel.org,m:linux-sctp@vger.kernel.org,m:linux-security-module@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-trace-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:ntfs3@lists.linux.dev,m:samba-technical@lists.samba.org,m:sched-ext@lists.linux.dev,m:target-devel@vger.kernel.org,m:tipc-discussion@lists.sourceforge.net,m:v9fs@lists.linux.dev,m:phahn-oss@avm.de,m:ericvh@kernel.org,m:lucho@ionkov.net,m:asmadeus@codewreck.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[linux_oss@crudebyte.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[crudebyte.com:+];
	RCPT_COUNT_GT_50(0.00)[63];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codewreck.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.dev:email,avm.de:email,davemloft.net:email]
X-Rspamd-Queue-Id: E80E326725F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tuesday, 10 March 2026 12:48:50 CET Philipp Hahn wrote:
> Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
> check.
> 
> Change generated with coccinelle.
> 
> To: Eric Van Hensbergen <ericvh@kernel.org>
> To: Latchesar Ionkov <lucho@ionkov.net>
> To: Dominique Martinet <asmadeus@codewreck.org>
> To: Christian Schoenebeck <linux_oss@crudebyte.com>
> To: "David S. Miller" <davem@davemloft.net>
> To: Eric Dumazet <edumazet@google.com>
> To: Jakub Kicinski <kuba@kernel.org>
> To: Paolo Abeni <pabeni@redhat.com>
> To: Simon Horman <horms@kernel.org>
> Cc: v9fs@lists.linux.dev
> Cc: netdev@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Philipp Hahn <phahn-oss@avm.de>
> ---
>  include/net/9p/client.h | 2 +-
>  net/9p/trans_rdma.c     | 8 ++++----
>  2 files changed, 5 insertions(+), 5 deletions(-)

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>
 
> diff --git a/include/net/9p/client.h b/include/net/9p/client.h
> index
> 838a94218b593f3fb19e6827c472753380193461..4bde6bd716f323c819745e64c7aac0dea
> 7beb72f 100644 --- a/include/net/9p/client.h
> +++ b/include/net/9p/client.h
> @@ -364,7 +364,7 @@ static inline struct p9_fid *p9_fid_get(struct p9_fid
> *fid)
> 
>  static inline int p9_fid_put(struct p9_fid *fid)
>  {
> -	if (!fid || IS_ERR(fid))
> +	if (IS_ERR_OR_NULL(fid))
>  		return 0;
> 
>  	if (tracepoint_enabled(9p_fid_ref))
> diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
> index
> aa5bd74d333f3b5e6fd1e4344d26bc0201ff7f7f..60461344b536bcb6e94112aace75a88b6
> a99ad86 100644 --- a/net/9p/trans_rdma.c
> +++ b/net/9p/trans_rdma.c
> @@ -252,16 +252,16 @@ static void rdma_destroy_trans(struct p9_trans_rdma
> *rdma) if (!rdma)
>  		return;
> 
> -	if (rdma->qp && !IS_ERR(rdma->qp))
> +	if (!IS_ERR_OR_NULL(rdma->qp))
>  		ib_destroy_qp(rdma->qp);
> 
> -	if (rdma->pd && !IS_ERR(rdma->pd))
> +	if (!IS_ERR_OR_NULL(rdma->pd))
>  		ib_dealloc_pd(rdma->pd);
> 
> -	if (rdma->cq && !IS_ERR(rdma->cq))
> +	if (!IS_ERR_OR_NULL(rdma->cq))
>  		ib_free_cq(rdma->cq);
> 
> -	if (rdma->cm_id && !IS_ERR(rdma->cm_id))
> +	if (!IS_ERR_OR_NULL(rdma->cm_id))
>  		rdma_destroy_id(rdma->cm_id);
> 
>  	kfree(rdma);


