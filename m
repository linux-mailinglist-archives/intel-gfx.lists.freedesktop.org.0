Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5I7JC6BjN2qINAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Jun 2026 06:08:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FCF6AA267
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Jun 2026 06:07:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=bombadil.20210309 header.b=hptvdn7h;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=infradead.org (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 272B810E2F0;
	Sun, 21 Jun 2026 04:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 768F010E2EB;
 Sun, 21 Jun 2026 04:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=XCxSbVufly1F5OgcrC8pX68PnRpg/ZBltK5Fv8aADtc=; b=hptvdn7hAEyqLSSi6UHEbZRFEY
 LxsLkOs05u4riAeR02ItCutTOd6zOyS3H6Fcm2wPyWHifrhGtgqtANxAcOJRKBQFqFoLbtyvjVQCU
 zbD8yoHVPtstUv1nE0n/ujT4Z5voOasbqlJAgJEuw0qUDsG3auFIQ/TRjO0ocGuwEf8Echl79RvOj
 oR8Z2DG0eIRNKZuUdE/b7XxmNLOxvuNy+aFZq1k3+wHNHOvbHo7br+Skz8S36LnSw0/sfz+BDvQYc
 3pJVpeI+rZQG+rpP7XuH4jWj7bHUqMKBQlOx9toWbyTJ+2fvO1Rn+K/0u0g9XTC2peSFgEvTV4XCe
 Co8bt4cQ==;
Received: from [50.53.43.113] (helo=[192.168.254.34])
 by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
 id 1wb9TM-00000003jpw-1ZVX; Sun, 21 Jun 2026 04:07:52 +0000
Message-ID: <1a20e4bf-fd7f-453e-b7a8-c7feb0b077c6@infradead.org>
Date: Sat, 20 Jun 2026 21:07:51 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] Documentation: xe_drm: fix chars used for subsection
To: Rafael Passos <rafael@rcpassos.me>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 skhan@linuxfoundation.org
References: <20260621030114.963405-1-rafael@rcpassos.me>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20260621030114.963405-1-rafael@rcpassos.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[infradead.org : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rdunlap@infradead.org,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[infradead.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,infradead.org:mid,infradead.org:from_mime,rcpassos.me:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 91FCF6AA267



On 6/20/26 8:01 PM, Rafael Passos wrote:
> Fixes "ERROR: A level 2 section cannot be used here".
> Equal signs are reserved for document titles.
> This file docs gets imported by driver-uapi.rst,
> and the page title is defined the.

                        defined there.

> 
> 
> Signed-off-by: Rafael Passos <rafael@rcpassos.me>

LGTM. Thanks.

Reviewed-by: Randy Dunlap <rdunlap@infradead.org>
Tested-by: Randy Dunlap <rdunlap@infradead.org>

> ---
> Hi, I send the v1 for this patch only for the linux-doc list.
> The v2 fixes this, and has improvements to the commit message.
> Thanks,
> 
> Rafael
> 
>  include/uapi/drm/xe_drm.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/include/uapi/drm/xe_drm.h b/include/uapi/drm/xe_drm.h
> index 48e9f1fdb78d..4dfb30e6c8a8 100644
> --- a/include/uapi/drm/xe_drm.h
> +++ b/include/uapi/drm/xe_drm.h
> @@ -2537,21 +2537,21 @@ struct drm_xe_exec_queue_set_property {
>   * Refer to Documentation/netlink/specs/drm_ras.yaml for complete interface specification.
>   *
>   * Node Registration
> - * =================
> + * -----------------
>   *
>   * The driver registers DRM RAS nodes for each error severity level.
>   * enum drm_xe_ras_error_severity defines the node-id, while DRM_XE_RAS_ERROR_SEVERITY_NAMES maps
>   * node-id to node-name.
>   *
>   * Error Classification
> - * ====================
> + * --------------------
>   *
>   * Each node contains a list of error counters. Each error is identified by a error-id and
>   * an error-name. enum drm_xe_ras_error_component defines the error-id, while
>   * DRM_XE_RAS_ERROR_COMPONENT_NAMES maps error-id to error-name.
>   *
>   * User Interface
> - * ==============
> + * --------------
>   *
>   * To retrieve error values of a error counter, userspace applications should
>   * follow the below steps:

-- 
~Randy
